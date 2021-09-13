RSpec.describe FizzBuzz do
  it "has a version number" do
    expect(FizzBuzz::VERSION).not_to be nil
  end

  describe "#response" do
    let(:fizz_buzz){ FizzBuzz.new(input_str) }
    subject{ fizz_buzz.response }

    context "1が入力されたとき" do
      let(:input_str){ "1" }
      it{ is_expected.to eq "1" }
    end

    context "9999が入力されたとき" do
      let(:input_str){ "9999" }
      it{ is_expected.to eq "9999" }
    end
  end
end
