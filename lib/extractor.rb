#
class Extractor
  def phone_numbers(text)
    text.scan(/\(\d{3}\)\s\d{3}-\d{4}/)
  end

  def emails(text)
    text.scan(/[a-zA-Z0-9_\-\.]+@[a-zA-Z0-9_\-\.]+\.[a-zA-Z]{2,5}/)
    # text.scan(/\S+@\S+\.\S{2,5}/)
  end
end
