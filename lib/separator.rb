require 'pry'
#
class Separator
  def words(text)
    return nil if text =~ /^\d*$/

    text.scan(/\S*[^\s\d]/i)
  end

  def phone_number(digits)
    phone_number = /\(?(\d{3})\)?[- \.]?(\d{3})[- \.]?(\d{4})/.match(digits)
    return nil unless phone_number

    area = phone_number[1]
    number = "#{phone_number[2]}-#{phone_number[3]}"

    { area_code: area, number: number }
  end

  def money(value)
    money = /(\$)(\d*[\.]?[\,]?\d*)/.match(value)
    return nil unless money

    currency = money[1]
    amount = "#{money[2]} #{money[3]}".to_f

    { currency: currency, amount: amount }
  end

  def zipcode(digits)
    zip_code = /(\d{5})[\-](\d{4})/.match(digits)
    return nil unless zip_code

    zip = zip_code[1]
    plus = zip_code[2]

    { zip: zip, plus4: plus }
  end

  def date(numbers)
    date = %r{(\d{1,2})[\/]?(\d{1,2})[\/]?(\d{4})}.match(numbers)
    return nil unless date

    month = date[1].to_i
    day = date[2].to_i
    year = date[3].to_i

    { month: month, day: day, year: year }
  end
end
