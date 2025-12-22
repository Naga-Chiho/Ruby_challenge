require 'csv'

# 配列を作成
people = [] 

# csvファイルを1行ずつ読み込み
CSV.foreach("personal_infomation.csv" , headers: true) do |row|
  person = {
  id: row["no"],
  name: row["namae"],
  ruby: row["rubi"],
  sex: row["seibetu"],
  tel: row["denwa"],
  mobile: row["keitai"],
  mail: row["mairu"],
  zip: row["yuubinbango"],
  address1: row["jusho1"],
  address2: row["jusho2"],
  address3: row["jusho3"],
  address4: row["jusho4"],
  address5: row["jusho5"],
  birthday: row["tanjobi"]
}

  # 配列に追加
  people << person  
end

# p people 

people.each do |person|
  puts person[:name]
end