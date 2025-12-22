require 'csv'

# csvファイルを1行ずつ読み込み
CSV.foreach("personal_infomation.csv" headers: true) do |row|
  p row
end
















# 復習！
# ・pってなんだっけ
# →pメゾット。putsと同じようなもので、デバックに使用される。