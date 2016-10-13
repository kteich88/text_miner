#
class Validator
  def binary(text)
  end

  def word(text)
    if text != /\S*[^\s\d]/i
      true
    else
      false
    end
  end
end
