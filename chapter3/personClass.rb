require "time"
require 'json'

# クラスを作成
class Person
  # attr_accessorメソッド使用！
  attr_accessor :id, :name, :ruby, :sex, :tel, :mobile, :mail, :zip, :address1, :address2, :address3, :address4, :address5, :birthday

  # 自動で呼び出し！
  def initialize(id, name, ruby, sex, tel, mobile, mail, zip, address1, address2, address3, address4, address5, birthday)
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

  def address
    "#{address1}#{address2}#{address3}#{address4}#{address5}"
  end

  def age
    # 誕生日を日付データにしている
    birthday_date = Time.parse(@birthday)
    # 今日の日付データ
    today = Time.now
    # 今年の誕生日データ
    this_years_birthday = Time.local(today.year, birthday_date.month, birthday_date.day)

    age = today.year - birthday_date.year

    if today < this_years_birthday
      age -= 1
    end

    age
  end

  def json_data 
    JSON.generate({
      "id": @id,
      "name": @name,
      "address": address,   
      "birthday": @birthday,
      "age": age            
    })
  end

end