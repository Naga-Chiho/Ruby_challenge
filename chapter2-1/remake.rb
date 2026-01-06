require 'csv'
require './person.rb'

# 配列を作成
people = []

# csvファイルを1行ずつ読み込み
CSV.foreach("personal_infomation.csv", headers: true) do |row|
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

people.each do |person|
  puts person.name
end
