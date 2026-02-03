require 'csv'
require './personClass.rb'

# 配列を作成
people = []
json_people = []

# csvファイルを1行ずつ読み込み
CSV.foreach("../personal_infomation.csv", headers: true) do |row|
  person = Person.new(
    row["no"], 
    row["namae"], 
    row["rubi"], 
    row["seibetu"], 
    row["denwa"],
    row["keitai"], 
    row["mairu"], 
    row["yuubinbango"], 
    row["jusho1"], 
    row["jusho2"],
    row["jusho3"], 
    row["jusho4"], 
    row["jusho5"], 
    row["tanjobi"]
  )
  people << person
end

# json_dataメソッドを使って配列のJSON を作る 
json_people = people.map do |person|
  person.json_data
end


# 文字列としてファイルに保存する場合、配列のカタチにする
File.open("users.json", "w") do |file|
  file.write("[#{json_people.join(",\n")}]")
end