require "fizz_buzz/version"

class InputError < StandardError; end

class FizzBuzz
  def initialize str
    @input = str.to_i
  end

  def response
    raise InputError unless valid?

    case @input % 15
    when 0
      "FizzBuzz"
    when 3,6,9,12
      "Fizz"
    when 5,10
      "Buzz"
    else
      @input.to_s
    end
  end

  private
  def valid?
    @input > 0
  end

end
