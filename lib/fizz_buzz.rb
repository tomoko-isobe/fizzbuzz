require "fizz_buzz/version"

class InputError < StandardError; end

class FizzBuzz
  def initialize str
    @input = str.to_i
  end

  def response
    raise InputError unless valid?
    case
    when (@input % 3)==0
      "Fizz"
    else
      @input.to_s
    end
  end

  private
  def valid?
    @input > 0
  end

end
