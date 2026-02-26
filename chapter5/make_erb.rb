require 'csv'
require './personClass.rb'
require "erb"

# 配列を作成
people = []

# ハッシュ
people_csv = {}


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

people.each do |person|
  if people_csv[person.address1].nil?
    people_csv[person.address1] = [person.age]
  else
    people_csv[person.address1] << person.age
  end
end

average_person_csv = {}

people_csv.each do |prefecture, ages|
  avg = ages.sum / ages.length
  average_person_csv[prefecture] = avg
end

template = File.read("table.erb")

File.open("table.html", "w") do |file|
  file.write(ERB.new(template).result(binding))
end
