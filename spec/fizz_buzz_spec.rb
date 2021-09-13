RSpec.describe FizzBuzz do
  it "has a version number" do
    expect(FizzBuzz::VERSION).not_to be nil
  end

  describe "#response" do
    let(:fizz_buzz){ FizzBuzz.new(input_str) }
    subject{ fizz_buzz.response }

    context "正常値: 0以上の数字" do
      context "1が入力されたとき" do
        let(:input_str){ "1" }
        it{ is_expected.to eq "1" }
      end

      context "9999が入力されたとき" do
        let(:input_str){ "9999" }
        it{ is_expected.to eq "9999" }
      end
    end

    context "異常値" do
      context "0以下の数字" do
        let(:input_str){ "0" }
        it { expect { subject }.to raise_error(InputError) }
      end

      context "数字以外の文字列"
      context "全角数字"
    end
  end
end
