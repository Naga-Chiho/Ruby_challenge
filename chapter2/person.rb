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
end