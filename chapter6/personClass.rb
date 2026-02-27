require "time"
require './errorClass.rb'

class Person
  attr_accessor :id, :name, :ruby, :sex, :tel, :mobile, :mail, :zip, :address1, :address2, :address3, :address4, :address5, :birthday

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
    birthday_date = Time.parse(@birthday)
    today = Time.now
    this_years_birthday = Time.local(today.year, birthday_date.month, birthday_date.day)

    age = today.year - birthday_date.year
    age -= 1 if today < this_years_birthday

    if age < 18
      raise AgeError
    end

    age
  end
end