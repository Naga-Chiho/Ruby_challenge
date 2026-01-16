require "date"

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
    # nilガード
    (address1 ||= '') + (address2 ||= '') + (address3 ||= '') + (address4 ||= '') + (address5 ||= '')
  end

  # メゾットを用意
  def age
    # 誕生日を日付データにしている
    birthday_date = Date.parse(@birthday)
    # 今日の日付データ
    today = Date.today

    # 計算(誕生日が来てなくても一旦引き算)
    age_year = today.year - birthday_date.year

    if (today.month < birthday_date.month)
      age_year = age_year - 1
    else 
      if(today.day < birthday_date.day)
        age_year = age_year - 1
      end
    end

    age_year
  end

end