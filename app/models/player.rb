
class Player < ApplicationRecord
  # ユーザー名とパスワードでログイン
  devise :database_authenticatable, :registerable,
         :rememberable,
         authentication_keys: [:name]

  # ユーザー名の設定
 validates :name, presence: true,
                 uniqueness: { case_sensitive: false }
  # パスワードの設定
  validates :password, length: { minimum: 6 },
            if: -> { password.present? }

  validates :password, presence: true, on: :create
attribute :rating, :integer, default: 500
  # 回答履歴
  has_many :answers, dependent: :destroy

  # 回答数
  def total_answers
    answers.count
  end

  # 正解数
  def correct_answers
    answers.where(correct: true).count
  end

  # 正答率
  def accuracy
    return 0 if total_answers.zero?

    (correct_answers.to_f / total_answers * 100).round(1)
  end

  # 最高レート
  def best_rating
    return rating if answers.empty?

    current = 500
    best = 500

    answers.order(:created_at, :id).each do |answer|
      current = [current + answer.rating_change, 0].max
      best = [best, current].max
    end

    best
  end

  # 連続正解数
  def winning_streak
    streak = 0

    answers.order(created_at: :desc, id: :desc).each do |answer|
      break unless answer.correct

      streak += 1
    end

    streak
  end
end
