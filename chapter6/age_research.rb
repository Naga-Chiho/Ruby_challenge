require 'csv'
require './personClass.rb'
require "erb"

people = []

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
  begin
    puts "#{person.name}: #{person.age}歳"
  rescue AgeError
    puts "エラーが発生しました"
  end
end


