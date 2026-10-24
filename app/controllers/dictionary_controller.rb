
class DictionaryController < ApplicationController
  before_action :authenticate_player!

  def index
    @query = params[:q].to_s.strip[0, 100]
    @kanjis = []

    if @query.present?
      escaped = ActiveRecord::Base.sanitize_sql_like(@query)
      pattern = "%#{escaped}%"

      matches = Kanji.where(
        "character LIKE :pattern ESCAPE '\\' OR " \
        "LOWER(COALESCE(vietnamese, '')) LIKE LOWER(:pattern) ESCAPE '\\' OR " \
        "korean LIKE :pattern ESCAPE '\\'",
        pattern: pattern
      ).to_a

      query_normalized = @query.unicode_normalize(:nfc).downcase

      @kanjis = matches.sort_by do |kanji|
        # カンマ区切りの複数読みも個別に検索順位を判定
        readings = [
          kanji.character,
          *kanji.vietnamese.to_s.split(/[,、]/),
          *kanji.korean.to_s.split(/[,、]/)
        ].map do |value|
          value.to_s.strip.unicode_normalize(:nfc).downcase
        end

        priority =
          if readings.include?(query_normalized)
            0  # 完全一致
          elsif readings.any? { |value| value.start_with?(query_normalized) }
            1  # 前方一致
          else
            2  # 部分一致
          end

        [priority, kanji.id]
      end.first(50)
    end

    respond_to do |format|
      format.html

      format.json do
        render json: @kanjis.map { |kanji|
          {
            character: kanji.character,
            vietnamese: kanji.vietnamese,
            korean: kanji.korean
          }
        }
      end
    end
  end
end
