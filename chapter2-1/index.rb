require 'csv'

#クラスを作成
class Person
  # 自動で呼び出し！
  def initialize(id,name,ruby,sex,tel,mobile,mail,zip,address1,address2,address3,address4,address5,birthday)
    @id = id
    @name = name 
    @ruby = ruby
    @sex = sex
    @tel = tel
    @mobile = mobile
    @mail = mail
    @zip = zip
    @address1 = address1
    @address2 = address2
    @address3 = address3
    @address4 = address4
    @address5 = address5
    @birthday = birthday
  end
  def id
    @id
  end
  def name
    @name
  end
  def id
    @id
  end
  def ruby
    @ruby
  end
  def sex
    @sex
  end
  def mobile
    @mobile
  end
  def mail
    @mail
  end
  def zip
    @zip
  end
  def address1
    @address1
  end
  def address2
    @address2
  end
  def address3
    @address3
  end
  def address4
    @address4
  end
  def address5
    @address5
  end
  def birthday
    @birthday
  end
end


# 配列を作成
people = [] 

# csvファイルを1行ずつ読み込み
CSV.foreach("personal_infomation.csv", headers: true) do |row|
  # オブジェクトを作成！CSVファイルの各列をあてはめていく！
  person = Person.new(
    row["no"], row["namae"], row["rubi"], row["seibetu"], row["denwa"],
    row["keitai"], row["mairu"], row["yuubinbango"], row["jusho1"], row["jusho2"],
    row["jusho3"], row["jusho4"], row["jusho5"], row["tanjobi"]
  )
  people << person
end


people.each do |person|
  puts person.name
end
