kanjis = {
  "一" => "nhất",
  "右" => "hữu",
  "雨" => "vũ",
  "円" => "viên",
  "王" => "vương",
  "音" => "âm",
  "下" => "hạ",
  "火" => "hỏa",
  "花" => "hoa",
  "貝" => "bối",
  "学" => "học",
  "気" => "khí",
  "九" => "cửu",
  "休" => "hưu",
  "玉" => "ngọc",
  "金" => "kim",
  "空" => "không",
  "月" => "nguyệt",
  "犬" => "khuyển",
  "見" => "kiến",
  "五" => "ngũ",
  "口" => "khẩu",
  "校" => "hiệu",
  "左" => "tả",
  "三" => "tam",
  "山" => "sơn",
  "子" => "tử",
  "四" => "tứ",
  "糸" => "ti",
  "字" => "tự",
  "耳" => "nhĩ",
  "七" => "thất",
  "車" => "xa",
  "手" => "thủ",
  "十" => "thập",
  "出" => "xuất",
  "女" => "nữ",
  "小" => "tiểu",
  "上" => "thượng",
  "森" => "sâm",
  "人" => "nhân",
  "水" => "thủy",
  "正" => "chính,chánh",
  "生" => "sinh",
  "青" => "thanh",
  "夕" => "tịch",
  "石" => "thạch",
  "赤" => "xích",
  "千" => "thiên",
  "川" => "xuyên",
  "先" => "tiên",
  "早" => "tảo",
  "草" => "thảo",
  "足" => "túc",
  "村" => "thôn",
  "大" => "đại",
  "男" => "nam",
  "竹" => "trúc",
  "中" => "trung",
  "虫" => "trùng",
  "町" => "đinh",
  "天" => "thiên",
  "田" => "điền",
  "土" => "thổ",
  "二" => "nhị",
  "日" => "nhật",
  "入" => "nhập",
  "年" => "niên",
  "白" => "bạch",
  "八" => "bát",
  "百" => "bách",
  "文" => "văn",
  "木" => "mộc",
  "本" => "bản",
  "名" => "danh",
  "目" => "mục",
  "立" => "lập",
  "力" => "lực",
  "林" => "lâm",
  "六" => "lục"
}

raise "80字ではありません" unless kanjis.size == 80

kanjis.each do |character, vietnamese|
  kanji = Kanji.find_or_initialize_by(character: character)

  kanji.update!(
    vietnamese: vietnamese,
    grade: 1,
    level: "10",
    difficulty: 500
  )
end

puts "小学1年生の登録済み漢字：#{Kanji.where(grade: 1).count}字"
# 小学2年生の漢字（第1弾）
grade2_kanjis = {
  "引" => "dẫn",
  "羽" => "vũ",
  "雲" => "vân",
  "園" => "viên",
  "遠" => "viễn",
  "何" => "hà",
  "科" => "khoa",
  "夏" => "hạ",
  "家" => "gia",
  "歌" => "ca",
  "画" => "họa",
  "回" => "hồi",
  "会" => "hội",
  "海" => "hải",
  "絵" => "hội",
  "外" => "ngoại",
  "角" => "giác",
  "楽" => "lạc",
  "活" => "hoạt",
  "間" => "gian",
  "丸" => "hoàn",
  "岩" => "nham",
  "顔" => "nhan",
  "汽" => "khí",
  "記" => "ký",
  "帰" => "quy",
  "弓" => "cung",
  "牛" => "ngưu",
  "魚" => "ngư",
  "京" => "kinh"
}

grade2_kanjis.each do |character, vietnamese|
  kanji = Kanji.find_or_initialize_by(character: character)

  kanji.update!(
    vietnamese: vietnamese,
    grade: 2,
    level: "9",
    difficulty: 700
  )
end

puts "小学2年生：#{Kanji.where(grade: 2).count}字"
puts "全漢字：#{Kanji.count}字"

# 小学2年生の漢字（第2弾：残り130字）
grade2_more = {
  "強" => "cường",
  "教" => "giáo",
  "近" => "cận",
  "兄" => "huynh",
  "形" => "hình",
  "計" => "kế",
  "元" => "nguyên",
  "言" => "ngôn",
  "原" => "nguyên",
  "戸" => "hộ",
  "古" => "cổ",
  "午" => "ngọ",
  "後" => "hậu",
  "語" => "ngữ",
  "工" => "công",
  "公" => "công",
  "広" => "quảng",
  "交" => "giao",
  "光" => "quang",
  "考" => "khảo",
  "行" => "hành,hàng",
  "高" => "cao",
  "黄" => "hoàng",
  "合" => "hợp",
  "谷" => "cốc",
  "国" => "quốc",
  "黒" => "hắc",
  "今" => "kim",
  "才" => "tài",
  "細" => "tế",
  "作" => "tác",
  "算" => "toán",
  "止" => "chỉ",
  "市" => "thị",
  "矢" => "thỉ",
  "姉" => "tỉ",
  "思" => "tư",
  "紙" => "chỉ",
  "寺" => "tự",
  "自" => "tự",
  "時" => "thời",
  "室" => "thất",
  "社" => "xã",
  "弱" => "nhược",
  "首" => "thủ",
  "秋" => "thu",
  "週" => "chu",
  "春" => "xuân",
  "書" => "thư",
  "少" => "thiểu",
  "場" => "trường",
  "色" => "sắc",
  "食" => "thực",
  "心" => "tâm",
  "新" => "tân",
  "親" => "thân",
  "図" => "đồ",
  "数" => "số",
  "西" => "tây",
  "声" => "thanh",
  "星" => "tinh",
  "晴" => "tình",
  "切" => "thiết",
  "雪" => "tuyết",
  "船" => "thuyền",
  "線" => "tuyến",
  "前" => "tiền",
  "組" => "tổ",
  "走" => "tẩu",
  "多" => "đa",
  "太" => "thái",
  "体" => "thể",
  "台" => "đài",
  "地" => "địa",
  "池" => "trì",
  "知" => "tri",
  "茶" => "trà",
  "昼" => "trú",
  "長" => "trường,trưởng",
  "鳥" => "điểu",
  "朝" => "triều",
  "直" => "trực",
  "通" => "thông",
  "弟" => "đệ",
  "店" => "điếm",
  "点" => "điểm",
  "電" => "điện",
  "刀" => "đao",
  "冬" => "đông",
  "当" => "đương",
  "東" => "đông",
  "答" => "đáp",
  "頭" => "đầu",
  "同" => "đồng",
  "道" => "đạo",
  "読" => "độc",
  "内" => "nội",
  "南" => "nam",
  "肉" => "nhục",
  "馬" => "mã",
  "売" => "mại",
  "買" => "mãi",
  "麦" => "mạch",
  "半" => "bán",
  "番" => "phiên",
  "父" => "phụ",
  "風" => "phong",
  "分" => "phân",
  "聞" => "văn",
  "米" => "mễ",
  "歩" => "bộ",
  "母" => "mẫu",
  "方" => "phương",
  "北" => "bắc",
  "毎" => "mỗi",
  "妹" => "muội",
  "万" => "vạn",
  "明" => "minh",
  "鳴" => "minh",
  "毛" => "mao",
  "門" => "môn",
  "夜" => "dạ",
  "野" => "dã",
  "友" => "hữu",
  "用" => "dụng",
  "曜" => "diệu",
  "来" => "lai",
  "里" => "lý",
  "理" => "lý",
  "話" => "thoại"
}

raise "追加分の字数を確認してください" unless grade2_more.size == 130

grade2_more.each do |character, vietnamese|
  kanji = Kanji.find_or_initialize_by(character: character)

  kanji.update!(
    vietnamese: vietnamese,
    grade: 2,
    level: "9",
    difficulty: 700
  )
end

puts "小学2年生：#{Kanji.where(grade: 2).count}字"
puts "全漢字：#{Kanji.count}字"

# 小学3年生の漢字（第1弾：50字）
grade3_kanjis = {
  "悪" => "ác",
  "安" => "an",
  "暗" => "ám",
  "医" => "y",
  "委" => "ủy",
  "意" => "ý",
  "育" => "dục",
  "員" => "viên",
  "院" => "viện",
  "飲" => "ẩm",
  "運" => "vận",
  "泳" => "vịnh",
  "駅" => "dịch",
  "央" => "ương",
  "横" => "hoành",
  "屋" => "ốc",
  "温" => "ôn",
  "化" => "hóa",
  "荷" => "hà",
  "界" => "giới",
  "開" => "khai",
  "階" => "giai",
  "寒" => "hàn",
  "感" => "cảm",
  "漢" => "hán",
  "館" => "quán",
  "岸" => "ngạn",
  "起" => "khởi",
  "期" => "kỳ",
  "客" => "khách",
  "究" => "cứu",
  "急" => "cấp",
  "級" => "cấp",
  "宮" => "cung",
  "球" => "cầu",
  "去" => "khứ",
  "橋" => "kiều",
  "業" => "nghiệp",
  "曲" => "khúc",
  "局" => "cục",
  "銀" => "ngân",
  "区" => "khu",
  "苦" => "khổ",
  "具" => "cụ",
  "君" => "quân",
  "係" => "hệ",
  "軽" => "khinh",
  "血" => "huyết",
  "決" => "quyết",
  "研" => "nghiên"
}

raise "50字ではありません" unless grade3_kanjis.size == 50

grade3_kanjis.each do |character, vietnamese|
  kanji = Kanji.find_or_initialize_by(character: character)

  kanji.update!(
    vietnamese: vietnamese,
    grade: 3,
    level: "8",
    difficulty: 900
  )
end

puts "小学3年生：#{Kanji.where(grade: 3).count}字"
puts "全漢字：#{Kanji.count}字"


# 小学3年生の漢字（第2弾：51〜100字）
grade3_more_2 = {
  "県" => "huyện",
  "庫" => "khố",
  "湖" => "hồ",
  "向" => "hướng",
  "幸" => "hạnh",
  "港" => "cảng",
  "号" => "hiệu",
  "根" => "căn",
  "祭" => "tế",
  "皿" => "mãnh",
  "仕" => "sĩ",
  "死" => "tử",
  "使" => "sử,sứ",
  "始" => "thủy",
  "指" => "chỉ",
  "歯" => "xỉ",
  "詩" => "thi",
  "次" => "thứ",
  "事" => "sự",
  "持" => "trì",
  "式" => "thức",
  "実" => "thực",
  "写" => "tả",
  "者" => "giả",
  "主" => "chủ",
  "守" => "thủ",
  "取" => "thủ",
  "酒" => "tửu",
  "受" => "thụ",
  "州" => "châu",
  "拾" => "thập",
  "終" => "chung",
  "習" => "tập",
  "集" => "tập",
  "住" => "trú",
  "重" => "trọng,trùng",
  "宿" => "túc",
  "所" => "sở",
  "暑" => "thử",
  "助" => "trợ",
  "昭" => "chiêu",
  "消" => "tiêu",
  "商" => "thương",
  "章" => "chương",
  "勝" => "thắng",
  "乗" => "thừa",
  "植" => "thực",
  "申" => "thân",
  "身" => "thân",
  "神" => "thần"
}

raise "50字ではありません" unless grade3_more_2.size == 50

grade3_more_2.each do |character, vietnamese|
  kanji = Kanji.find_or_initialize_by(character: character)

  kanji.update!(
    vietnamese: vietnamese,
    grade: 3,
    level: "8",
    difficulty: 900
  )
end

puts "小学3年生：#{Kanji.where(grade: 3).count}字"
puts "全漢字：#{Kanji.count}字"

# 小学3年生の漢字（第3弾：101〜200字）
grade3_more_3 = {
  "真" => "chân",
  "深" => "thâm",
  "進" => "tiến",
  "世" => "thế",
  "整" => "chỉnh",
  "昔" => "tích",
  "全" => "toàn",
  "相" => "tương",
  "送" => "tống",
  "想" => "tưởng",
  "息" => "tức",
  "速" => "tốc",
  "族" => "tộc",
  "他" => "tha",
  "打" => "đả",
  "対" => "đối",
  "待" => "đãi",
  "代" => "đại",
  "第" => "đệ",
  "題" => "đề",
  "炭" => "thán",
  "短" => "đoản",
  "談" => "đàm",
  "着" => "trước,trứ",
  "注" => "chú",
  "柱" => "trụ",
  "丁" => "đinh",
  "帳" => "trướng",
  "調" => "điều",
  "追" => "truy",
  "定" => "định",
  "庭" => "đình",
  "笛" => "địch",
  "鉄" => "thiết",
  "転" => "chuyển",
  "都" => "đô",
  "度" => "độ",
  "投" => "đầu",
  "豆" => "đậu",
  "島" => "đảo",
  "湯" => "thang",
  "登" => "đăng",
  "等" => "đẳng",
  "動" => "động",
  "童" => "đồng",
  "農" => "nông",
  "波" => "ba",
  "配" => "phối",
  "倍" => "bội",
  "箱" => "tương",
  "畑" => nil,
  "発" => "phát",
  "反" => "phản",
  "坂" => "phản",
  "板" => "bản",
  "皮" => "bì",
  "悲" => "bi",
  "美" => "mỹ",
  "鼻" => "tị",
  "筆" => "bút",
  "氷" => "băng",
  "表" => "biểu",
  "秒" => "miểu",
  "病" => "bệnh",
  "品" => "phẩm",
  "負" => "phụ",
  "部" => "bộ",
  "服" => "phục",
  "福" => "phúc",
  "物" => "vật",
  "平" => "bình",
  "返" => "phản",
  "勉" => "miễn",
  "放" => "phóng",
  "味" => "vị",
  "命" => "mệnh,mạng",
  "面" => "diện",
  "問" => "vấn",
  "役" => "dịch",
  "薬" => "dược",
  "由" => "do",
  "油" => "du",
  "有" => "hữu",
  "遊" => "du",
  "予" => "dự",
  "羊" => "dương",
  "洋" => "dương",
  "葉" => "diệp",
  "陽" => "dương",
  "様" => "dạng",
  "落" => "lạc",
  "流" => "lưu",
  "旅" => "lữ",
  "両" => "lưỡng",
  "緑" => "lục",
  "礼" => "lễ",
  "列" => "liệt",
  "練" => "luyện",
  "路" => "lộ",
  "和" => "hòa"
}

raise "100字ではありません" unless grade3_more_3.size == 100

grade3_more_3.each do |character, vietnamese|
  kanji = Kanji.find_or_initialize_by(character: character)

  kanji.update!(
    vietnamese: vietnamese,
    grade: 3,
    level: "8",
    difficulty: 900
  )
end

puts "小学3年生：#{Kanji.where(grade: 3).count}字"
puts "全漢字：#{Kanji.count}字"

# 小学4年生の漢字202字
# 書式：漢字 半角スペース 漢越音
# NONE：漢越音を未設定にして出題対象外

grade4_data = <<~DATA
愛 ái
案 án
以 dĩ
衣 y
位 vị
茨 từ
印 ấn
英 anh
栄 vinh
媛 viện
塩 diêm
岡 cương
億 ức
加 gia
果 quả
貨 hóa
課 khóa
芽 nha
賀 hạ
改 cải
械 giới
害 hại
街 nhai
各 các
覚 giác
潟 NONE
完 hoàn
官 quan
管 quản
関 quan
観 quan
願 nguyện
岐 kỳ
希 hy
季 quý
旗 kỳ
器 khí
機 cơ
議 nghị
求 cầu
泣 khấp
給 cấp
挙 cử
漁 ngư
共 cộng
協 hiệp
鏡 kính
競 cạnh
極 cực
熊 hùng
訓 huấn
軍 quân
郡 quận
群 quần
径 kính
景 cảnh
芸 nghệ
欠 khiếm
結 kết
建 kiến
健 kiện
験 nghiệm
固 cố
功 công
好 hảo
香 hương
候 hậu
康 khang
佐 tá
差 sai
菜 thái
最 tối
埼 NONE
材 tài
崎 kỳ
昨 tạc
札 trát
刷 loát
察 sát
参 tham
産 sản
散 tán
残 tàn
氏 thị
司 ti
試 thí
児 nhi
治 trị
滋 tư
辞 từ
鹿 lộc
失 thất
借 tá
種 chủng
周 chu
祝 chúc
順 thuận
初 sơ
松 tùng
笑 tiếu
唱 xướng
焼 thiêu
照 chiếu
城 thành
縄 thằng
臣 thần
信 tín
井 tỉnh
成 thành
省 tỉnh
清 thanh
静 tĩnh
席 tịch
積 tích
折 chiết
節 tiết
説 thuyết
浅 thiển
戦 chiến
選 tuyển
然 nhiên
争 tranh
倉 thương
巣 sào
束 thúc
側 trắc
続 tục
卒 tốt
孫 tôn
帯 đới
隊 đội
達 đạt
単 đơn
置 trí
仲 trọng
沖 xung
兆 triệu
低 đê
底 để
的 đích
典 điển
伝 truyền
徒 đồ
努 nỗ
灯 đăng
働 NONE
特 đặc
徳 đức
栃 NONE
奈 nại
梨 lê
熱 nhiệt
念 niệm
敗 bại
梅 mai
博 bác
阪 phản
飯 phạn
飛 phi
必 tất
票 phiếu
標 tiêu
不 bất
夫 phu
付 phó
府 phủ
阜 phụ
富 phú
副 phó
兵 binh
別 biệt
辺 biên
変 biến
便 tiện
包 bao
法 pháp
望 vọng
牧 mục
末 mạt
満 mãn
未 vị
民 dân
無 vô
約 ước
勇 dũng
要 yếu
養 dưỡng
浴 dục
利 lợi
陸 lục
良 lương
料 liệu
量 lượng
輪 luân
類 loại
令 lệnh
冷 lãnh
例 lệ
連 liên
老 lão
労 lao
録 lục
DATA

grade4_kanjis = {}

grade4_data.each_line do |line|
  character, vietnamese = line.strip.split(/\s+/, 2)
  next if character.nil? || character.empty?

  raise "重複しています：#{character}" if grade4_kanjis.key?(character)

  grade4_kanjis[character] =
    vietnamese == "NONE" ? nil : vietnamese
end

raise "202字ではありません" unless grade4_kanjis.size == 202

# 既存の1〜3年生データとの重複を検査
duplicates = Kanji.where(character: grade4_kanjis.keys)
                  .where.not(grade: 4)
                  .pluck(:character)

raise "他学年との重複：#{duplicates.join(', ')}" if duplicates.any?

Kanji.transaction do
  grade4_kanjis.each do |character, vietnamese|
    kanji = Kanji.find_or_initialize_by(character: character)

    kanji.update!(
      vietnamese: vietnamese,
      grade: 4,
      level: "7",
      difficulty: 1100
    )
  end
end

puts "小学4年生：#{Kanji.where(grade: 4).count}字"
puts "全漢字：#{Kanji.count}字"

# 小学5年生の漢字193字
# 漢字と代表的な漢越音

grade5_data = <<~DATA
圧 áp
囲 vi
移 di
因 nhân
永 vĩnh
営 doanh
衛 vệ
易 dịch
益 ích
液 dịch
演 diễn
応 ứng
往 vãng
桜 anh
可 khả
仮 giả
価 giá
河 hà
過 quá
快 khoái
解 giải
格 cách
確 xác
額 ngạch
刊 san
幹 cán
慣 quán
眼 nhãn
紀 kỷ
基 cơ
寄 ký
規 quy
喜 hỉ
技 kỹ
義 nghĩa
逆 nghịch
久 cửu
旧 cựu
救 cứu
居 cư
許 hứa
境 cảnh
均 quân
禁 cấm
句 cú
型 hình
経 kinh
潔 khiết
件 kiện
険 hiểm
検 kiểm
限 hạn
現 hiện
減 giảm
故 cố
個 cá
護 hộ
効 hiệu
厚 hậu
耕 canh
航 hàng
鉱 khoáng
構 cấu
興 hưng,hứng
講 giảng
告 cáo
混 hỗn
査 tra
再 tái
災 tai
妻 thê
採 thái
際 tế
在 tại
財 tài
罪 tội
殺 sát
雑 tạp
酸 toan
賛 tán
士 sĩ
支 chi
史 sử
志 chí
枝 chi
師 sư
資 tư
飼 tự
示 thị
似 tự
識 thức
質 chất
舎 xá
謝 tạ
授 thụ
修 tu
述 thuật
術 thuật
準 chuẩn
序 tự
招 chiêu
証 chứng
象 tượng
賞 thưởng
条 điều
状 trạng
常 thường
情 tình
織 chức
職 chức
制 chế
性 tính
政 chính
勢 thế
精 tinh
製 chế
税 thuế
責 trách
績 tích
接 tiếp
設 thiết
絶 tuyệt
祖 tổ
素 tố
総 tổng
造 tạo
像 tượng
増 tăng
則 tắc
測 trắc
属 thuộc
率 suất,luật
損 tổn
貸 thải
態 thái
団 đoàn
断 đoạn
築 trúc
貯 trữ
張 trương
停 đình
提 đề
程 trình
適 thích
統 thống
堂 đường
銅 đồng
導 đạo
得 đắc
毒 độc
独 độc
任 nhậm
燃 nhiên
能 năng
破 phá
犯 phạm
判 phán
版 bản
比 tỉ
肥 phì
非 phi
費 phí
備 bị
評 bình
貧 bần
布 bố
婦 phụ
武 vũ
復 phục
複 phức
仏 phật
粉 phấn
編 biên
弁 biện
保 bảo
墓 mộ
報 báo
豊 phong
防 phòng
貿 mậu
暴 bạo
脈 mạch
務 vụ
夢 mộng
迷 mê
綿 miên
輸 thâu
余 dư
容 dung
略 lược
留 lưu
領 lĩnh
歴 lịch
DATA

grade5_kanjis = {}

grade5_data.each_line do |line|
  character, vietnamese = line.strip.split(/\s+/, 2)
  next if character.nil? || character.empty?

  if grade5_kanjis.key?(character)
    raise "重複している漢字：#{character}"
  end

  grade5_kanjis[character] = vietnamese
end

raise "193字ではありません" unless grade5_kanjis.size == 193

# 他の学年との重複をチェック
duplicates = Kanji.where(character: grade5_kanjis.keys)
                  .where.not(grade: 5)
                  .pluck(:character)

if duplicates.any?
  raise "他学年と重複：#{duplicates.join(', ')}"
end

Kanji.transaction do
  grade5_kanjis.each do |character, vietnamese|
    kanji = Kanji.find_or_initialize_by(character: character)

    kanji.update!(
      vietnamese: vietnamese,
      grade: 5,
      level: "6",
      difficulty: 1300
    )
  end
end

puts "小学5年生：#{Kanji.where(grade: 5).count}字"
puts "全漢字：#{Kanji.count}字"

# 小学6年生の漢字191字
# NONE = 漢越音の確認が必要なため出題しない

grade6_data = <<~DATA
胃 vị
異 dị
遺 di
域 vực
宇 vũ
映 ánh
延 diên
沿 duyên
恩 ân
我 ngã
灰 hôi
拡 khoách
革 cách
閣 các
割 cát
株 chu
干 can
巻 quyển
看 khán
簡 giản
危 nguy
机 NONE
揮 huy
貴 quý
疑 nghi
吸 hấp
供 cung
胸 hung
郷 hương
勤 cần
筋 cân
系 hệ
敬 kính
警 cảnh
劇 kịch
激 kích
穴 huyệt
券 khoán
絹 quyên
権 quyền
憲 hiến
源 nguyên
厳 nghiêm
己 kỷ
呼 hô
誤 ngộ
后 hậu
孝 hiếu
皇 hoàng
紅 hồng
降 giáng,hàng
鋼 cương
刻 khắc
穀 cốc
骨 cốt
困 khốn
砂 sa
座 tọa
済 tế
裁 tài
策 sách
冊 sách
蚕 tàm
至 chí
私 tư
姿 tư
視 thị
詞 từ
誌 chí
磁 từ
射 xạ
捨 xả
尺 xích
若 nhược
樹 thụ
収 thu
宗 tông
就 tựu
衆 chúng
従 tòng
縦 túng
縮 súc
熟 thục
純 thuần
処 xử
署 thự
諸 chư
除 trừ
承 thừa
将 tướng
傷 thương
障 chướng
蒸 chưng
針 châm
仁 nhân
垂 thùy
推 thôi
寸 thốn
盛 thịnh
聖 thánh
誠 thành
舌 thiệt
宣 tuyên
専 chuyên
泉 tuyền
洗 tẩy
染 nhiễm
銭 tiền
善 thiện
奏 tấu
窓 NONE
創 sáng
装 trang
層 tầng
操 thao
蔵 tàng
臓 tạng
存 tồn
尊 tôn
退 thoái
宅 trạch
担 đảm
探 tham
誕 đản
段 đoạn
暖 noãn
値 trị
宙 trụ
忠 trung
著 trứ
庁 NONE
頂 đỉnh
腸 tràng
潮 triều
賃 nhẫm
痛 thống
敵 địch
展 triển
討 thảo
党 đảng
糖 đường
届 NONE
難 nan
乳 nhũ
認 nhận
納 nạp
脳 não
派 phái
拝 bái
背 bối
肺 phế
俳 bài
班 ban
晩 vãn
否 phủ
批 phê
秘 bí
俵 NONE
腹 phúc
奮 phấn
並 tịnh
陛 bệ
閉 bế
片 phiến
補 bổ
暮 mộ
宝 bảo
訪 phỏng
亡 vong
忘 vong
棒 bổng
枚 mai
幕 mạc
密 mật
盟 minh
模 mô
訳 dịch
郵 bưu
優 ưu
預 dự
幼 ấu
欲 dục
翌 dực
乱 loạn
卵 noãn
覧 lãm
裏 lý
律 luật
臨 lâm
朗 lãng
論 luận
DATA

grade6_kanjis = {}

grade6_data.each_line do |line|
  character, vietnamese = line.strip.split(/\s+/, 2)
  next if character.nil? || character.empty?

  if grade6_kanjis.key?(character)
    raise "重複している漢字：#{character}"
  end

  grade6_kanjis[character] =
    vietnamese == "NONE" ? nil : vietnamese
end

raise "191字ではありません" unless grade6_kanjis.size == 191

# 他学年との重複をチェック
duplicates = Kanji.where(character: grade6_kanjis.keys)
                  .where.not(grade: 6)
                  .pluck(:character)

if duplicates.any?
  raise "他学年との重複：#{duplicates.join(', ')}"
end

Kanji.transaction do
  grade6_kanjis.each do |character, vietnamese|
    kanji = Kanji.find_or_initialize_by(character: character)

    kanji.update!(
      vietnamese: vietnamese,
      grade: 6,
      level: "5",
      difficulty: 1500
    )
  end
end

puts "小学6年生：#{Kanji.where(grade: 6).count}字"
puts "全漢字：#{Kanji.count}字"
puts "出題可能：#{Kanji.where.not(vietnamese: [nil, '']).count}字"


# 漢検4級：第1弾（50字）
grade4_kanken = {
  "与" => "dữ",
  "丈" => "trượng",
  "及" => "cập",
  "凡" => "phàm",
  "互" => "hỗ",
  "凶" => "hung",
  "丹" => "đan",
  "介" => "giới",
  "匹" => "thất",
  "丘" => "khâu",
  "甘" => "cam",
  "巨" => "cự",
  "矛" => "mâu",
  "召" => "triệu",
  "奴" => "nô",
  "占" => "chiêm",
  "玄" => "huyền",
  "汚" => "ô",
  "朱" => "chu",
  "仰" => "ngưỡng",
  "汗" => "hãn",
  "弐" => "nhị",
  "芝" => "chi",
  "芋" => "dụ",
  "忙" => "mang",
  "尽" => "tận",
  "朽" => "hủ",
  "旨" => "chỉ",
  "劣" => "liệt",
  "旬" => "tuần",
  "吐" => "thổ",
  "巡" => "tuần",
  "舟" => "chu",
  "迎" => "nghênh",
  "抜" => "bạt",
  "攻" => "công",
  "却" => "khước",
  "更" => "canh",
  "狂" => "cuồng",
  "尾" => "vĩ",
  "抗" => "kháng",
  "吹" => "xuy",
  "壱" => "nhất",
  "床" => "sàng",
  "妙" => "diệu",
  "秀" => "tú",
  "戒" => "giới",
  "含" => "hàm",
  "沈" => "trầm",
  "即" => "tức"
}

raise "50字ではありません" unless grade4_kanken.size == 50


# 他の級・学年との重複を防ぐ
duplicates = Kanji.where(character: grade4_kanken.keys)
                  .where.not(level: "4")
                  .pluck(:character)

raise "他の級と重複：#{duplicates.join(', ')}" if duplicates.any?

Kanji.transaction do
  grade4_kanken.each do |character, vietnamese|
    kanji = Kanji.find_or_initialize_by(character: character)

    kanji.update!(
      vietnamese: vietnamese,
      grade: nil,
      level: "4",
      difficulty: 1700
    )
  end
end

puts "漢検4級の登録数：#{Kanji.where(level: '4').count}字"
puts "全漢字：#{Kanji.count}字"

# 漢検4級：第2弾（追加50字）
# NONEは漢越音未設定・出題対象外

kanken4_more = {
  "刈" => "ngải",
  "払" => "phất",
  "込" => nil,
  "扱" => "sáp",
  "叫" => "khiếu",
  "伺" => "tứ",
  "坊" => "phường",
  "沢" => "trạch",
  "彼" => "bỉ",
  "抵" => "để",
  "姓" => "tính",
  "拓" => "thác",
  "杯" => "bôi",
  "茂" => "mậu",
  "到" => "đáo",
  "沼" => "chiểu",
  "突" => "đột",
  "刺" => "thích",
  "征" => "chinh",
  "迫" => "bách",
  "拍" => "phách",
  "泊" => "bạc",
  "怖" => "bố",
  "肩" => "kiên",
  "押" => "áp",
  "祈" => "kỳ",
  "況" => "huống",
  "抱" => "bão",
  "肪" => "phương",
  "拠" => "cứ",
  "屈" => "khuất",
  "依" => "y",
  "奇" => "kỳ",
  "荒" => "hoang",
  "咲" => nil,
  "侵" => "xâm",
  "是" => "thị",
  "盆" => "bồn",
  "狩" => "thú",
  "峠" => nil,
  "柔" => "nhu",
  "皆" => "giai",
  "冒" => "mạo",
  "逃" => "đào",
  "盾" => "thuẫn",
  "怒" => "nộ",
  "恒" => "hằng",
  "郎" => "lang",
  "枯" => "khô",
  "狭" => "hiệp"
}

raise "50字ではありません" unless kanken4_more.size == 50

duplicates = Kanji.where(character: kanken4_more.keys)
                  .where.not(level: "4")
                  .pluck(:character)

raise "他の級との重複：#{duplicates.join(', ')}" if duplicates.any?

Kanji.transaction do
  kanken4_more.each do |character, vietnamese|
    kanji = Kanji.find_or_initialize_by(character: character)

    kanji.update!(
      vietnamese: vietnamese,
      grade: nil,
      level: "4",
      difficulty: 1700
    )
  end
end

puts "漢検4級：#{Kanji.where(level: '4').count}字"
puts "全漢字：#{Kanji.count}字"

# 漢検4級：残り213字
# 漢越音は初期候補。公開前に辞書照合する。
# NONE = 読み未確認・出題対象外

kanken4_remaining_data = <<~DATA
珍 trân
俗 tục
耐 nại
威 uy
柄 bính
為 vi
致 trí
称 xưng
恥 sỉ
眠 miên
陣 trận
振 chấn
恋 luyến
透 thấu
唐 đường
浸 tẩm
桃 đào
涙 lệ
紋 văn
烈 liệt
倒 đảo
扇 phiến
娘 nương
胴 đồng
軒 hiên
浮 phù
兼 kiêm
捕 bộ
剤 tễ
剣 kiếm
疲 bì
被 bị
砲 pháo
鬼 quỷ
悩 não
脂 chi
峰 phong
敏 mẫn
恵 huệ
途 đồ
浜 tân
般 ban
恐 khủng
斜 tà
陰 âm
婚 hôn
添 thiêm
淡 đạm
描 miêu
執 chấp
脱 thoát
紹 thiệu
粒 lạp
惨 thảm
猛 mãnh
菓 quả
釈 thích
寂 tịch
盗 đạo
彩 thái
掘 quật
販 phiến
脚 cước
乾 can
帽 mạo
傍 bàng
遅 trì
弾 đạn
鈍 độn
惑 hoặc
腕 oản
雄 hùng
普 phổ
堤 đê
塔 tháp
絡 lạc
幅 phúc
渡 độ
訴 tố
尋 tầm
握 ác
紫 tử
殖 thực
煮 chử
圏 quyển
援 viện
幾 kỷ
越 việt
畳 điệp
偉 vĩ
替 thế
堅 kiên
項 hạng
奥 áo
距 cự
御 ngự
微 vi
腰 yêu
煙 yên
誉 dự
遣 khiển
暇 hạ
搬 ban
継 kế
鼓 cổ
誇 khoa
鉛 duyên
雅 nhã
歳 tuế
載 tải
溶 dung
勧 khuyến
殿 điện
較 giảo
嘆 thán
詰 cật
僧 tăng
跳 khiêu
蓄 súc
違 vi
跡 tích
飾 sức
慎 thận
傾 khuynh
雷 lôi
触 xúc
詳 tường
寝 tẩm
慢 mạn
漫 mạn
腐 hủ
隠 ẩn
駆 khu
箇 cá
徴 trưng
維 duy
暦 lịch
摘 trích
滴 tích
端 đoan
稲 đạo
踊 dũng
需 nhu
罰 phạt
雌 thư
豪 hào
網 võng
髪 phát
縁 duyên
舗 phô
戯 hí
輝 huy
歓 hoan
監 giám
黙 mặc
鋭 nhuệ
影 ảnh
慮 lự
輩 bối
儀 nghi
範 phạm
稿 cảo
趣 thú
撃 kích
盤 bàn
膚 phu
敷 phu
震 chấn
噴 phún
踏 đạp
舞 vũ
賦 phú
澄 trừng
謡 dao
薪 tân
繁 phồn
濃 nùng
隣 lân
獣 thú
壁 bích
薄 bạc
頼 lại
曇 đàm
憶 ức
隷 lệ
濁 trọc
避 tị
緯 vĩ
獲 hoạch
壊 hoại
燥 táo
齢 linh
療 liệu
鮮 tiên
環 hoàn
翼 dực
瞬 thuấn
贈 tặng
騒 tao
離 ly
鎖 tỏa
闘 đấu
麗 lệ
霧 vụ
爆 bạo
繰 NONE
欄 lan
響 hưởng
露 lộ
躍 dược
襲 tập
驚 kinh
鑑 giám
DATA

remaining = {}

kanken4_remaining_data.each_line do |line|
  character, vietnamese = line.strip.split(/\s+/, 2)
  next if character.nil? || character.empty?

  raise "重複：#{character}" if remaining.key?(character)

  remaining[character] = vietnamese == "NONE" ? nil : vietnamese
end

raise "213字ではありません：#{remaining.size}字" unless remaining.size == 213

# 既存の他学年・他級のデータは変更しない
duplicates = Kanji.where(character: remaining.keys)
                  .where.not(level: "4")
                  .pluck(:character)

raise "他学年・他級との重複：#{duplicates.join(', ')}" if duplicates.any?

Kanji.transaction do
  remaining.each do |character, vietnamese|
    kanji = Kanji.find_or_initialize_by(character: character)

    kanji.update!(
      vietnamese: vietnamese,
      grade: nil,
      level: "4",
      difficulty: 1700
    )
  end
end

puts "漢検4級：#{Kanji.where(level: '4').count}字"
puts "全漢字：#{Kanji.count}字"

# 漢検3級：新出284字
# 既存データを上書きしない安全な登録方式

kanken3_characters = <<~KANJI.split
乙 了 又 乏 孔 冗 幻 斤 斗 双
斥 巧 甲 伏 如 吉 企 帆 吏 刑
伐 匠 辛 寿 伸 没 忌 妨 尿 邦
芳 抑 伴 励 克 坑 択 肝 卓 泌
奉 苗 欧 抽 昇 拘 炎 炉 祉 阻
佳 炊 免 邪 岳 房 侍 怪 殴 施
封 卑 架 弧 郊 孤 削 恨 赴 怠
幽 促 卸 厘 哀 牲 胎 悔 冠 胆
某 契 訂 胞 峡 帝 虐 軌 隻 哲
桑 匿 凍 疾 徐 託 粋 辱 畜 殊
既 浪 紛 倹 悟 娯 衰 華 姫 脅
宴 畔 倣 埋 悦 掛 陵 酔 控 貫
勘 袋 粗 措 掃 陶 惜 逮 猟 隆
郭 菊 掲 符 赦 紺 豚 陪 排 婆
崩 粘 虚 陳 窒 彫 偶 啓 蛮 廊
募 揚 葬 揺 痘 裂 超 遂 喫 焦
欺 棋 湿 喚 晶 軸 掌 敢 換 随
絞 遇 硬 詠 婿 湾 雇 慌 携 滅
塗 飽 隔 慈 棄 愚 催 債 搾 嫁
賊 楼 滞 廉 滝 摂 零 塊 稚 滑
慨 裸 該 漂 誘 魂 獄 酵 慕 碑
膜 概 憎 遭 綱 墨 奪 漏 慰 緊
緩 閲 霊 餓 憂 墳 穂 暫 潤 遵
締 衝 鋳 駐 嘱 撮 潜 請 魅 墜
諾 審 擁 穏 壇 篤 嬢 錠 諮 錬
墾 縛 凝 賢 憩 縫 錯 謀 膨 聴
鍛 犠 擦 糧 繕 癖 覆 藩 騎 鎮
礎 翻 穫 濫 鯨 髄 鶏 簿 瀬 譲
鐘 籍 顧 魔
KANJI

# 漢越音の初期候補
# 記載のない漢字は辞書照合まで出題しない
readings = {
  "乙" => "ất",
  "了" => "liễu",
  "又" => "hựu",
  "乏" => "phạp",
  "孔" => "khổng",
  "冗" => "nhũng",
  "幻" => "huyễn",
  "斤" => "cân",
  "斗" => "đẩu",
  "双" => "song",
  "斥" => "xích",
  "巧" => "xảo",
  "甲" => "giáp",
  "伏" => "phục",
  "如" => "như",
  "吉" => "cát",
  "企" => "xí",
  "帆" => "phàm",
  "吏" => "lại",
  "刑" => "hình",
  "伐" => "phạt",
  "匠" => "tượng",
  "辛" => "tân",
  "寿" => "thọ",
  "伸" => "thân",
  "没" => "một",
  "忌" => "kỵ",
  "妨" => "phương",
  "尿" => "niệu",
  "邦" => "bang",
  "芳" => "phương",
  "抑" => "ức",
  "伴" => "bạn",
  "励" => "lệ",
  "克" => "khắc",
  "坑" => "khanh",
  "択" => "trạch",
  "肝" => "can",
  "卓" => "trác",
  "泌" => "bí",
  "奉" => "phụng",
  "苗" => "miêu",
  "欧" => "âu",
  "抽" => "trừu",
  "昇" => "thăng",
  "拘" => "câu",
  "炎" => "viêm",
  "炉" => "lô",
  "祉" => "chỉ",
  "阻" => "trở",
  "佳" => "giai",
  "炊" => "xuy",
  "免" => "miễn",
  "邪" => "tà",
  "岳" => "nhạc",
  "房" => "phòng",
  "侍" => "thị",
  "怪" => "quái",
  "殴" => "ẩu",
  "施" => "thi",
  "封" => "phong",
  "卑" => "ti",
  "架" => "giá",
  "弧" => "hồ",
  "郊" => "giao",
  "孤" => "cô",
  "削" => "tước",
  "恨" => "hận",
  "赴" => "phó",
  "怠" => "đãi",
  "幽" => "u",
  "促" => "xúc",
  "卸" => "tá",
  "厘" => "li",
  "哀" => "ai",
  "牲" => "sinh",
  "胎" => "thai",
  "悔" => "hối",
  "冠" => "quan",
  "胆" => "đảm",
  "某" => "mỗ",
  "契" => "khế",
  "訂" => "đính",
  "胞" => "bào",
  "峡" => "hiệp",
  "帝" => "đế",
  "虐" => "ngược",
  "軌" => "quỹ",
  "隻" => "chích",
  "哲" => "triết",
  "桑" => "tang",
  "匿" => "nặc",
  "凍" => "đống",
  "疾" => "tật",
  "徐" => "từ",
  "託" => "thác",
  "粋" => "túy",
  "辱" => "nhục",
  "畜" => "súc",
  "殊" => "thù",
  "既" => "ký",
  "浪" => "lãng",
  "紛" => "phân",
  "倹" => "kiệm",
  "悟" => "ngộ",
  "娯" => "ngu",
  "衰" => "suy",
  "華" => "hoa",
  "姫" => "cơ",
  "脅" => "hiếp",
  "宴" => "yến",
  "畔" => "bạn",
  "倣" => "phỏng",
  "埋" => "mai",
  "悦" => "duyệt",
  "掛" => "quải",
  "陵" => "lăng",
  "酔" => "túy",
  "控" => "khống",
  "貫" => "quán",
  "勘" => "khám",
  "袋" => "đại",
  "粗" => "thô",
  "措" => "thố",
  "掃" => "tảo",
  "陶" => "đào",
  "惜" => "tích",
  "逮" => "đãi",
  "猟" => "liệp",
  "隆" => "long",
  "郭" => "quách",
  "菊" => "cúc",
  "掲" => "yết",
  "符" => "phù",
  "赦" => "xá",
  "紺" => "cám",
  "豚" => "đồn",
  "陪" => "bồi",
  "排" => "bài",
  "婆" => "bà",
  "崩" => "băng",
  "粘" => "niêm",
  "虚" => "hư",
  "陳" => "trần",
  "窒" => "trất",
  "彫" => "điêu",
  "偶" => "ngẫu",
  "啓" => "khải",
  "蛮" => "man",
  "廊" => "lang",
  "募" => "mộ",
  "揚" => "dương",
  "葬" => "táng",
  "揺" => "dao",
  "痘" => "đậu",
  "裂" => "liệt",
  "超" => "siêu",
  "遂" => "toại",
  "喫" => "khiết",
  "焦" => "tiêu",
  "欺" => "khi",
  "棋" => "kỳ",
  "湿" => "thấp",
  "喚" => "hoán",
  "晶" => "tinh",
  "軸" => "trục",
  "掌" => "chưởng",
  "敢" => "cảm",
  "換" => "hoán",
  "随" => "tùy",
  "絞" => "giảo",
  "遇" => "ngộ",
  "硬" => "ngạnh",
  "詠" => "vịnh",
  "婿" => "tế",
  "湾" => "loan",
  "雇" => "cố",
  "慌" => "hoảng",
  "携" => "huề",
  "滅" => "diệt",
  "塗" => "đồ",
  "飽" => "bão",
  "隔" => "cách",
  "慈" => "từ",
  "棄" => "khí",
  "愚" => "ngu",
  "催" => "thôi",
  "債" => "trái",
  "搾" => "trá",
  "嫁" => "giá",
  "賊" => "tặc",
  "楼" => "lâu",
  "滞" => "trệ",
  "廉" => "liêm",
  "滝" => "long",
  "摂" => "nhiếp",
  "零" => "linh",
  "塊" => "khối",
  "稚" => "trĩ",
  "滑" => "hoạt",
  "慨" => "khái",
  "裸" => "lõa",
  "該" => "cai",
  "漂" => "phiêu",
  "誘" => "dụ",
  "魂" => "hồn",
  "獄" => "ngục",
  "酵" => "diếu",
  "慕" => "mộ",
  "碑" => "bi",
  "膜" => "mạc",
  "概" => "khái",
  "憎" => "tăng",
  "遭" => "tao",
  "綱" => "cương",
  "墨" => "mặc",
  "奪" => "đoạt",
  "漏" => "lậu",
  "慰" => "úy",
  "緊" => "khẩn",
  "緩" => "hoãn",
  "閲" => "duyệt",
  "霊" => "linh",
  "餓" => "ngạ",
  "憂" => "ưu",
  "墳" => "phần",
  "穂" => "tuệ",
  "暫" => "tạm",
  "潤" => "nhuận",
  "遵" => "tuân",
  "締" => "đế",
  "衝" => "xung",
  "鋳" => "chú",
  "駐" => "trú",
  "嘱" => "chúc",
  "撮" => "toát",
  "潜" => "tiềm",
  "請" => "thỉnh",
  "魅" => "mị",
  "墜" => "trụy",
  "諾" => "nặc",
  "審" => "thẩm",
  "擁" => "ủng",
  "穏" => "ổn",
  "壇" => "đàn",
  "篤" => "đốc",
  "嬢" => "nương",
  "錠" => "đĩnh",
  "諮" => "tư",
  "錬" => "luyện",
  "墾" => "khẩn",
  "縛" => "phược",
  "凝" => "ngưng",
  "賢" => "hiền",
  "憩" => "khế",
  "縫" => "phùng",
  "錯" => "thác",
  "謀" => "mưu",
  "膨" => "bành",
  "聴" => "thính",
  "鍛" => "đoán",
  "犠" => "hi",
  "擦" => "sát",
  "糧" => "lương",
  "繕" => "thiện",
  "癖" => "phích",
  "覆" => "phúc",
  "藩" => "phiên",
  "騎" => "kỵ",
  "鎮" => "trấn",
  "礎" => "sở",
  "翻" => "phiên",
  "穫" => "hoạch",
  "濫" => "lạm",
  "鯨" => "kình",
  "髄" => "tủy",
  "鶏" => "kê",
  "簿" => "bộ",
  "瀬" => "lại",
  "譲" => "nhượng",
  "鐘" => "chung",
  "籍" => "tịch",
  "顧" => "cố",
  "魔" => "ma"
}

raise "284字ではありません" unless kanken3_characters.size == 284
raise "重複した漢字があります" unless kanken3_characters.uniq.size == 284

# 他の級との重複だけを検出
conflicts = Kanji.where(character: kanken3_characters)
                 .where.not(level: "3")
                 .pluck(:character)

if conflicts.any?
  raise "他の級との重複：#{conflicts.join(', ')}"
end

# 何度実行しても重複登録されない
Kanji.transaction do
  kanken3_characters.each do |character|
    kanji = Kanji.find_or_initialize_by(character: character)

    if kanji.new_record?
      kanji.vietnamese = readings[character]
      kanji.grade = nil
      kanji.level = "3"
      kanji.difficulty = 1900
      kanji.save!
    end
  end
end


puts "漢検3級：#{Kanji.where(level: '3').count}字"
puts "全漢字：#{Kanji.count}字"
puts "漢検3級の漢越音登録数：#{Kanji.where(level: '3').where.not(vietnamese: [nil, '']).count}字"

# 漢検準2級：新出328字
# 初期問題レート：2100

jun2_characters = <<~KANJI.split
刃 弔 厄 屯 升 凸 尼 囚 汁 丙
仙 凹 且 迅 缶 妄 朴 妃 充 江
肌 壮 忍 肖 亜 抄 妊 杉 把 吟
妥 戻 扶 呉 但 伯 廷 呈 享 茎
枠 昆 披 肯 併 弦 肢 泡 侮 沸
附 拒 泥 析 斉 奔 坪 劾 枢 拐
迭 尚 盲 叔 宜 邸 拙 抹 岬 勅
砕 帥 拷 挑 甚 洞 俊 叙 臭 貞
浄 津 亭 窃 荘 糾 垣 括 柳 衷
疫 挟 洪 侯 姻 飢 准 逓 宵 症
秩 陥 耗 殉 祥 娠 核 唇 泰 捜
逐 租 翁 朕 栓 倫 索 逝 畝 竜
蚊 挿 紡 酌 桟 浦 珠 俸 剖 宰
恭 栽 剛 唆 貢 曹 涼 培 据 崇
偵 偏 渓 庸 舶 患 瓶 眺 旋 釣
累 斎 猫 逸 尉 涯 蛍 麻 悠 訟
淑 唯 軟 庶 悼 菌 渋 堀 剰 渉
蛇 紳 粛 偽 渇 殻 喝 堕 猶 惰
棚 扉 棟 筒 痢 裕 媒 硫 塚 塀
雰 搭 愉 塁 遍 渦 琴 棺 堪 廃
隅 診 款 閑 詔 循 硝 暁 酢 詐
粧 傘 疎 喪 傑 漠 睡 愁 酬 嗣
嫌 鉢 煩 頒 献 溝 碁 督 賄 虜
虞 猿 禅 鈴 禍 奨 践 靴 褐 艇
酪 塑 寛 頑 痴 僚 閥 寡 酷 銘
僕 彰 漬 誓 銃 駄 漸 塾 遮 嫡
寧 漆 緒 褒 徹 撤 摩 窮 槽 窯
撲 履 遷 寮 稼 謁 勲 幣 賓 憤
罷 弊 慶 賜 賠 懐 衡 還 儒 磨
薫 融 憾 諭 薦 壌 嚇 購 頻 霜
爵 懇 濯 轄 醜 矯 謹 擬 礁 謙
謄 償 繊 襟 繭 顕 懲 癒 韻 覇
璽 羅 譜 藻 懸 醸 騰 艦
KANJI

raise "328字ではありません" unless jun2_characters.size == 328
raise "漢字の重複があります" unless jun2_characters.uniq.size == 328

# 漢越音の初期登録
# 未確認の漢字はnilとして出題を保留
readings = {
  "刃" => "nhận",
  "弔" => "điếu",
  "厄" => "ách",
  "屯" => "truân",
  "升" => "thăng",
  "凸" => "đột",
  "尼" => "ni",
  "囚" => "tù",
  "汁" => "trấp",
  "丙" => "bính",
  "仙" => "tiên",
  "凹" => "ao",
  "且" => "thả",
  "迅" => "tấn",
  "妄" => "vọng",
  "妃" => "phi",
  "充" => "sung",
  "江" => "giang",
  "肌" => "cơ",
  "壮" => "tráng",
  "忍" => "nhẫn",
  "肖" => "tiếu",
  "亜" => "á",
  "妊" => "nhâm",
  "吟" => "ngâm",
  "扶" => "phù",
  "伯" => "bá",
  "廷" => "đình",
  "呈" => "trình",
  "享" => "hưởng",
  "昆" => "côn",
  "弦" => "huyền",
  "肯" => "khẳng",
  "併" => "tịnh",
  "泡" => "phao",
  "泥" => "nê",
  "析" => "tích",
  "斉" => "tề",
  "奔" => "bôn",
  "盲" => "manh",
  "叔" => "thúc",
  "宜" => "nghi",
  "尚" => "thượng",
  "挑" => "thiêu",
  "甚" => "thậm",
  "洞" => "động",
  "俊" => "tuấn",
  "臭" => "xú",
  "貞" => "trinh",
  "津" => "tân",
  "亭" => "đình",
  "疫" => "dịch",
  "洪" => "hồng",
  "侯" => "hầu",
  "姻" => "nhân",
  "飢" => "cơ",
  "症" => "chứng",
  "秩" => "trật",
  "祥" => "tường",
  "核" => "hạch",
  "唇" => "thần",
  "泰" => "thái",
  "逐" => "trục",
  "租" => "tô",
  "翁" => "ông",
  "朕" => "trẫm",
  "倫" => "luân",
  "索" => "sách",
  "珠" => "châu",
  "恭" => "cung",
  "栽" => "tài",
  "剛" => "cương",
  "貢" => "cống",
  "曹" => "tào",
  "悠" => "du",
  "麻" => "ma",
  "唯" => "duy",
  "蛇" => "xà",
  "紳" => "thân",
  "琴" => "cầm",
  "献" => "hiến",
  "禅" => "thiền",
  "鈴" => "linh",
  "僕" => "bộc",
  "寧" => "ninh",
  "漆" => "tất",
  "徹" => "triệt",
  "儒" => "nho",
  "融" => "dung",
  "謙" => "khiêm",
  "韻" => "vận",
  "覇" => "bá",
  "羅" => "la",
  "譜" => "phổ",
  "藻" => "tảo",
  "騰" => "đằng",
  "艦" => "hạm"
}

# 既存の他学年・他級の漢字を確認
existing = Kanji.where(character: jun2_characters)
                .pluck(:character, :level)

conflicts = existing.reject { |_, level| level == "準2" }

if conflicts.any?
  puts "他の級に登録済みの漢字があります："
  conflicts.each do |character, level|
    puts "#{character}（現在：#{level}級）"
  end
  abort "級別分類を確認するため登録を中止しました"
end

Kanji.transaction do
  jun2_characters.each do |character|
    kanji = Kanji.find_or_initialize_by(character: character)

    if kanji.new_record?
      kanji.vietnamese = readings[character]
      kanji.grade = nil
      kanji.level = "準2"
      kanji.difficulty = 2100
      kanji.save!
    end
  end
end

puts "準2級登録数：#{Kanji.where(level: '準2').count}字"
puts "全漢字：#{Kanji.count}字"
puts "準2級の出題可能数：#{Kanji.where(level: '準2').where.not(vietnamese: [nil, '']).count}字"

# 漢検準2級：漢越音の補完
# 既存の読み・問題レート・回答履歴は変更しない
# NONE = 辞書での追加確認が必要な漢字

jun2_missing_data = <<~DATA
缶 phẫu
朴 phác
抄 sao
杉 sam
把 bả
妥 thỏa
戻 NONE
呉 ngô
但 đản
茎 hành
枠 NONE
披 phi
肢 chi
侮 vũ
沸 phí
附 phụ
拒 cự
坪 bình
劾 hặc
枢 xu
拐 quải
迭 điệt
邸 để
拙 chuyết
抹 mạt
岬 giáp
勅 sắc
砕 toái
帥 súy
拷 khảo
叙 tự
浄 tịnh
窃 thiết
荘 trang
糾 củ
垣 viên
括 quát
柳 liễu
衷 trung
挟 hiệp
准 chuẩn
逓 đệ
宵 tiêu
陥 hãm
耗 hao
殉 tuẫn
娠 thần
捜 sưu
栓 thuyên
逝 thệ
畝 mẫu
竜 long
蚊 văn
挿 sáp
紡 phưởng
酌 chước
桟 sạn
浦 phố
俸 bổng
剖 phẫu
宰 tể
唆 toa
涼 lương
培 bồi
据 cứ
崇 sùng
偵 trinh
偏 thiên
渓 khê
庸 dung
舶 bạc
患 hoạn
瓶 bình
眺 thiếu
旋 toàn
釣 điếu
累 lụy
斎 trai
猫 miêu
逸 dật
尉 úy
涯 nhai
蛍 huỳnh
訟 tụng
淑 thục
軟 nhuyễn
庶 thứ
悼 điệu
菌 khuẩn
渋 sáp
堀 quật
剰 thặng
渉 thiệp
粛 túc
偽 ngụy
渇 khát
殻 xác
喝 hát
堕 đọa
猶 do
惰 nọa
棚 bằng
扉 phi
棟 đống
筒 đồng
痢 lị
裕 dụ
媒 môi
硫 lưu
塚 trủng
塀 bình
雰 phân
搭 đáp
愉 du
塁 lũy
遍 biến
渦 oa
棺 quan
堪 kham
廃 phế
隅 ngung
診 chẩn
款 khoản
閑 nhàn
詔 chiếu
循 tuần
硝 tiêu
暁 hiểu
酢 tạc
詐 trá
粧 trang
傘 tán
疎 sơ
喪 tang
傑 kiệt
漠 mạc
睡 thụy
愁 sầu
酬 thù
嗣 tự
嫌 hiềm
鉢 bát
煩 phiền
頒 ban
溝 câu
碁 kỳ
督 đốc
賄 hối
虜 lỗ
虞 ngu
猿 viên
禍 họa
奨 tưởng
践 tiễn
靴 ngoa
褐 hạt
艇 đĩnh
酪 lạc
塑 tố
寛 khoan
頑 ngoan
痴 si
僚 liêu
閥 phiệt
寡 quả
酷 khốc
銘 minh
彰 chương
漬 tí
誓 thệ
銃 sung
駄 đà
漸 tiệm
塾 thục
遮 già
嫡 đích
緒 tự
褒 bao
撤 triệt
摩 ma
窮 cùng
槽 tào
窯 diêu
撲 phác
履 lý
遷 thiên
寮 liêu
稼 giá
謁 yết
勲 huân
幣 tệ
賓 tân
憤 phẫn
罷 bãi
弊 tệ
慶 khánh
賜 tứ
賠 bồi
懐 hoài
衡 hành
還 hoàn
磨 ma
薫 huân
憾 hám
諭 dụ
薦 tiến
壌 nhưỡng
嚇 hách
購 cấu
頻 tần
霜 sương
爵 tước
懇 khẩn
濯 trạc
轄 hạt
醜 xú
矯 kiểu
謹 cẩn
擬 nghĩ
礁 tiêu
謄 đằng
償 thường
繊 tiêm
襟 khâm
繭 kiển
顕 hiển
懲 trừng
癒 dũ
璽 tỉ
懸 huyền
醸 nhưỡng
DATA

readings = {}

jun2_missing_data.each_line do |line|
  character, vietnamese = line.strip.split(/\s+/, 2)
  next if character.nil? || character.empty?

  raise "重複：#{character}" if readings.key?(character)

  readings[character] = vietnamese == "NONE" ? nil : vietnamese
end

missing_kanjis = Kanji.where(level: "準2", vietnamese: [nil, ""])
missing_characters = missing_kanjis.pluck(:character)

# 登録対象外の字が混ざっていないか確認
unknown = readings.keys - Kanji.where(level: "準2").pluck(:character)
raise "準2級に存在しない漢字：#{unknown.join(' ')}" if unknown.any?

# 既存の空欄231字がすべて一覧に含まれるか確認
unlisted = missing_characters - readings.keys
raise "一覧にない漢字：#{unlisted.join(' ')}" if unlisted.any?

updated = 0

Kanji.transaction do
  missing_kanjis.each do |kanji|
    reading = readings[kanji.character]
    next if reading.nil? || reading.empty?

    kanji.update!(vietnamese: reading)
    updated += 1
  end
end

puts "今回補完した漢字：#{updated}字"
puts "準2級総数：#{Kanji.where(level: '準2').count}字"
puts "漢越音未登録：#{Kanji.where(level: '準2', vietnamese: [nil, '']).count}字"
puts "全漢字：#{Kanji.count}字"


# 漢検2級：新出185字
# 初期問題レート2300
# 読みが未設定の漢字は出題対象外

kanken2_characters = <<~KANJI.split
串 丼 乞 亀 伎 侶 俺 傲 僅 冥
冶 凄 刹 剥 勃 勾 匂 叱 呂 呪
咽 哺 唄 唾 喉 喩 嗅 嘲 堆 塞
填 妖 妬 嫉 宛 尻 崖 嵐 巾 弄
弥 彙 怨 恣 惧 慄 憧 憬 戚 戴
拉 拭 拳 拶 挨 挫 捉 捗 捻 摯
斑 斬 旦 旺 昧 曖 曽 枕 柵 柿
桁 梗 椅 椎 楷 毀 氾 汎 汰 沃
沙 淫 湧 溺 潰 煎 爪 爽 牙 狙
玩 瑠 璃 璧 瓦 畏 畿 痕 痩 瘍
眉 睦 瞭 瞳 稽 窟 箋 箸 籠 綻
緻 罵 羞 羨 肘 股 脇 脊 腎 腫
腺 膝 膳 臆 臼 舷 艶 芯 苛 萎
葛 蓋 蔑 蔽 藍 藤 虎 虹 蜂 蜜
袖 裾 訃 詣 詮 誰 諦 諧 謎 貌
貪 貼 賂 賭 踪 蹴 辣 遜 遡 那
酎 醒 采 釜 錦 錮 鍋 鍵 鎌 闇
隙 韓 頃 須 頓 頬 顎 餅 餌 駒
骸 鬱 鶴 麓 麺
KANJI

raise "185字ではありません" unless kanken2_characters.size == 185
raise "一覧内に重複があります" unless kanken2_characters.uniq.size == 185

# 漢越音の初期候補
# その他の漢字は辞書照合後に設定する
readings2 = {
  "亀" => "quy",
  "傲" => "ngạo",
  "僅" => "cận",
  "冥" => "minh",
  "刹" => "sát",
  "勃" => "bột",
  "呂" => "lữ",
  "呪" => "chú",
  "喉" => "hầu",
  "妖" => "yêu",
  "嫉" => "tật",
  "弥" => "di",
  "怨" => "oán",
  "憧" => "sung",
  "戚" => "thích",
  "戴" => "đái",
  "拳" => "quyền",
  "摯" => "chí",
  "斬" => "trảm",
  "旦" => "đán",
  "旺" => "vượng",
  "曖" => "ái",
  "枕" => "chẩm",
  "椅" => "ỷ",
  "淫" => "dâm",
  "溺" => "nịch",
  "潰" => "hội",
  "煎" => "tiên",
  "牙" => "nha",
  "狙" => "thư",
  "玩" => "ngoạn",
  "璃" => "ly",
  "瓦" => "ngõa",
  "畏" => "úy",
  "痕" => "ngân",
  "眉" => "mi",
  "稽" => "kê",
  "窟" => "quật",
  "籠" => "lung",
  "羨" => "tiện",
  "腎" => "thận",
  "腫" => "thũng",
  "臆" => "ức",
  "臼" => "cữu",
  "苛" => "ha",
  "蔑" => "miệt",
  "蔽" => "tế",
  "藍" => "lam",
  "藤" => "đằng",
  "虎" => "hổ",
  "蜂" => "phong",
  "蜜" => "mật",
  "詮" => "thuyên",
  "諦" => "đế",
  "貪" => "tham",
  "賂" => "lộ",
  "賭" => "đổ",
  "遡" => "tố",
  "那" => "na",
  "醒" => "tỉnh",
  "釜" => "phủ",
  "錦" => "cẩm",
  "錮" => "cố",
  "鎌" => "liêm",
  "闇" => "ám",
  "隙" => "khích",
  "韓" => "hàn",
  "須" => "tu",
  "頓" => "đốn",
  "顎" => "ngạc",
  "骸" => "hài",
  "鬱" => "uất",
  "鶴" => "hạc",
  "麓" => "lộc",
  "麺" => "miến"
}

# 既存の別レベルと重複しないか確認
conflicts = Kanji.where(character: kanken2_characters)
                 .where.not(level: "2")
                 .pluck(:character)

if conflicts.any?
  raise "他レベルとの重複：#{conflicts.join(' ')}"
end

Kanji.transaction do
  kanken2_characters.each do |character|
    kanji = Kanji.find_or_initialize_by(character: character)

    if kanji.new_record?
      kanji.vietnamese = readings2[character]
      kanji.grade = nil
      kanji.level = "2"
      kanji.difficulty = 2300
      kanji.save!
    end
  end
end

puts "漢検2級：#{Kanji.where(level: '2').count}字"
puts "全漢字：#{Kanji.count}字"
puts "漢越音登録済み：#{Kanji.where(level: '2').where.not(vietnamese: [nil, '']).count}字"

# 漢検2級：漢越音の補完
# すでに読みがある漢字は変更しない

kanken2_more_readings = {
  "串" => "xuyến",
  "丼" => nil,
  "乞" => "khất",
  "伎" => "kỹ",
  "侶" => "lữ",
  "俺" => "yêm",
  "冶" => "dã",
  "凄" => "thê",
  "剥" => "bác",
  "勾" => "câu",
  "匂" => nil,
  "叱" => "sất",
  "咽" => "yết",
  "哺" => "bộ",
  "唄" => "bái",
  "唾" => "thóa",
  "喩" => "dụ",
  "嗅" => "khứu",
  "嘲" => "trào",
  "堆" => "đôi",
  "塞" => "tắc",
  "填" => "điền",
  "妬" => "đố",
  "宛" => "uyển",
  "尻" => nil,
  "崖" => "nhai",
  "嵐" => "lam",
  "巾" => "cân",
  "弄" => "lộng",
  "彙" => "vị",
  "恣" => "tứ",
  "惧" => "cụ",
  "慄" => "lật",
  "憬" => "cảnh",
  "拉" => "lạp",
  "拭" => "thức",
  "拶" => "tạt",
  "挨" => "ai",
  "挫" => "tỏa",
  "捉" => "tróc",
  "捗" => "trắc",
  "捻" => "niệp",
  "斑" => "ban",
  "昧" => "muội",
  "曽" => "tằng",
  "柵" => "sách",
  "柿" => nil,
  "桁" => "hành",
  "梗" => "ngạnh",
  "椎" => "chùy",
  "楷" => "khải",
  "毀" => "hủy",
  "氾" => "phiếm",
  "汎" => "phiếm",
  "汰" => "thải",
  "沃" => "ốc",
  "沙" => "sa",
  "湧" => "dũng",
  "爪" => "trảo",
  "爽" => "sảng",
  "瑠" => "lưu",
  "璧" => "bích",
  "畿" => "kỳ",
  "痩" => "sấu",
  "瘍" => "dương",
  "睦" => "mục",
  "瞭" => "liễu",
  "瞳" => "đồng",
  "箋" => "tiên",
  "箸" => "trứ",
  "綻" => "trán",
  "緻" => "trí",
  "罵" => "mạ",
  "羞" => "tu",
  "肘" => "trửu",
  "股" => "cổ",
  "脇" => "hiếp",
  "脊" => "tích",
  "腺" => "tuyến",
  "膝" => "tất",
  "膳" => "thiện",
  "舷" => "huyền",
  "艶" => "diễm",
  "芯" => "tâm",
  "萎" => "ủy",
  "葛" => "cát",
  "蓋" => "cái",
  "虹" => "hồng",
  "袖" => "tụ",
  "裾" => "cư",
  "訃" => "phó",
  "詣" => "nghệ",
  "誰" => "thùy",
  "諧" => "hài",
  "謎" => "mê",
  "貌" => "mạo",
  "貼" => "thiếp",
  "踪" => "tung",
  "蹴" => "xúc",
  "辣" => "lạt",
  "遜" => "tốn",
  "酎" => "trữu",
  "采" => "thái",
  "鍋" => "oa",
  "鍵" => "kiện",
  "頃" => "khoảnh",
  "頬" => "giáp",
  "餅" => "bính",
  "餌" => "nhị",
  "駒" => "câu"
}

missing = Kanji.where(level: "2", vietnamese: [nil, ""])
unknown = kanken2_more_readings.keys - Kanji.where(level: "2").pluck(:character)
raise "2級にない漢字：#{unknown.join(' ')}" if unknown.any?

unlisted = missing.pluck(:character) - kanken2_more_readings.keys
raise "補完一覧にない漢字：#{unlisted.join(' ')}" if unlisted.any?

updated = 0

Kanji.transaction do
  missing.each do |kanji|
    reading = kanken2_more_readings[kanji.character]
    next if reading.nil? || reading.empty?

    kanji.update!(vietnamese: reading)
    updated += 1
  end
end

puts "今回補完：#{updated}字"
puts "2級の漢越音未登録：#{Kanji.where(level: '2', vietnamese: [nil, '']).count}字"
puts "全漢字：#{Kanji.count}字"

# 漢検準1級：漢越音補完 第1弾
# 未登録の読みだけ追加する

jun1_readings_1 = {
  "乃" => "nãi",
  "卜" => "bốc",
  "叉" => "xoa",
  "巳" => "tị",
  "勺" => "chước",
  "之" => "chi",
  "也" => "dã",
  "丑" => "sửu",
  "勿" => "vật",
  "云" => "vân",
  "仇" => "cừu",
  "尤" => "vưu",
  "巴" => "ba",
  "壬" => "nhâm",
  "廿" => "nhập",
  "允" => "doãn",
  "弗" => "phất",
  "禾" => "hòa",
  "叶" => "hiệp",
  "匝" => "táp",
  "乎" => "hồ",
  "弘" => "hoằng",
  "戊" => "mậu",
  "汀" => "đinh",
  "仔" => "tử",
  "只" => "chỉ",
  "乍" => "sạ",
  "卯" => "mão",
  "牟" => "mâu",
  "伍" => "ngũ",
  "此" => "thử",
  "艮" => "cấn",
  "瓜" => "qua",
  "亥" => "hợi",
  "弛" => "thỉ",
  "而" => "nhi",
  "肋" => "lặc",
  "亦" => "diệc",
  "伊" => "y",
  "夙" => "túc",
  "汐" => "tịch",
  "匡" => "khuông",
  "夷" => "di",
  "牝" => "tẫn",
  "丞" => "thừa",
  "圭" => "khuê",
  "汝" => "nhữ",
  "戎" => "nhung",
  "兇" => "hung",
  "旭" => "húc",
  "佃" => "điền",
  "牡" => "mẫu",
  "李" => "lý",
  "酉" => "dậu",
  "庇" => "tí",
  "宏" => "hoành",
  "辰" => "thần",
  "杜" => "đỗ",
  "杏" => "hạnh",
  "吾" => "ngô",
  "坐" => "tọa",
  "妓" => "kỹ",
  "兎" => "thố",
  "芥" => "giới",
  "灼" => "chước",
  "芙" => "phù",
  "吻" => "vẫn",
  "汲" => "cấp",
  "劫" => "kiếp",
  "牢" => "lao",
  "灸" => "cứu",
  "伶" => "linh",
  "玖" => "cửu",
  "芭" => "ba",
  "邑" => "ấp",
  "甫" => "phủ",
  "孜" => "tư",
  "亨" => "hanh",
  "孟" => "mạnh",
  "枇" => "tì",
  "其" => "kỳ",
  "侠" => "hiệp",
  "茅" => "mao",
  "祁" => "kỳ",
  "斧" => "phủ",
  "欣" => "hân",
  "姑" => "cô",
  "朋" => "bằng",
  "苓" => "linh",
  "竺" => "trúc",
  "宕" => "đãng",
  "岱" => "đại",
  "苔" => "đài",
  "昌" => "xương",
  "茄" => "gia",
  "坤" => "khôn",
  "庚" => "canh",
  "昏" => "hôn",
  "函" => "hàm",
  "珊" => "san"
}

unknown = jun1_readings_1.keys -
          Kanji.where(level: "準1").pluck(:character)

if unknown.any?
  raise "準1級に存在しない漢字: #{unknown.join(' ')}"
end

updated = 0

Kanji.transaction do
  jun1_readings_1.each do |character, reading|
    kanji = Kanji.find_by!(
      character: character,
      level: "準1"
    )

    next unless kanji.vietnamese.blank?

    kanji.update!(vietnamese: reading)
    updated += 1
  end
end

puts "今回補完：#{updated}字"
puts "準1級の漢越音登録済み：" +
  Kanji.where(level: "準1")
       .where.not(vietnamese: [nil, ""])
       .count.to_s + "字"
puts "準1級の漢越音未登録：" +
  Kanji.where(level: "準1", vietnamese: [nil, ""])
       .count.to_s + "字"

# 漢検準1級：漢越音補完 第2弾（100字）
# 既存の漢越音・問題レート・解答履歴は変更しない

jun1_readings_2_text = <<~DATA
亘 hoàn
托 thác
吃 cật
吊 điếu
曳 duệ
尖 tiêm
舛 suyễn
吞 thôn
扮 phẫn
沌 độn
杖 trượng
芹 cần
伽 già
祐 hữu
歪 oa
佑 hữu
宋 tống
迂 vu
吠 phệ
恰 kháp
宥 hựu
盈 doanh
或 hoặc
奄 yểm
忽 hốt
沓 đạp
肱 hoành
肴 hào
杭 hàng
昂 ngang
些 ta
卦 quái
叛 bạn
荊 kinh
穿 xuyên
荏 nhẫm
茜 thiến
巷 hạng
姪 điệt
屍 thi
狐 hồ
洩 tiết
恢 khôi
垢 cấu
臥 ngọa
亮 lượng
胤 dận
俄 nga
毘 tì
衿 khâm
玲 linh
咳 khái
迦 ca
按 án
砥 chỉ
凌 lăng
狼 lang
耽 đam
套 sáo
桓 hoàn
峨 nga
涛 đào
悌 đễ
恕 thứ
荻 địch
蚤 tảo
隼 chuẩn
浬 lý
栗 lật
栖 thê
啄 trác
朔 sóc
紐 nữu
釘 đinh
莱 lai
狸 ly
晋 tấn
砺 lệ
凋 điêu
峻 tuấn
紗 sa
砧 châm
疹 chẩn
豹 báo
脆 thúy
狽 bái
秤 xứng
笈 cấp
娩 vãn
倭 oa
圃 phố
倦 quyện
匪 phỉ
挽 vãn
訊 tấn
桂 quế
珪 khuê
矩 củ
捌 bát
莫 mạc
DATA

jun1_readings_2 = {}

jun1_readings_2_text.each_line do |line|
  character, reading = line.strip.split(/\s+/, 2)
  next if character.nil?

  raise "重複：#{character}" if jun1_readings_2.key?(character)

  jun1_readings_2[character] = reading
end

raise "100字ではありません" unless jun1_readings_2.size == 100

# 準1級以外の漢字が混ざっていないか確認
existing = Kanji.where(
  level: "準1",
  character: jun1_readings_2.keys
).pluck(:character)

unknown = jun1_readings_2.keys - existing

if unknown.any?
  raise "準1級に存在しない漢字：#{unknown.join(' ')}"
end

updated = 0

Kanji.transaction do
  jun1_readings_2.each do |character, reading|
    kanji = Kanji.find_by!(
      level: "準1",
      character: character
    )

    next unless kanji.vietnamese.blank?

    kanji.update!(vietnamese: reading)
    updated += 1
  end
end

total = Kanji.where(level: "準1")
registered = total.where.not(vietnamese: [nil, ""]).count

puts "今回補完：#{updated}字"
puts "準1級の漢越音登録済み：#{registered}字"
puts "準1級の漢越音未登録：#{total.count - registered}字"
puts "全漢字：#{Kanji.count}字"
