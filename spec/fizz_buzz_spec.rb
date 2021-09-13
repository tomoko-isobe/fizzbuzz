RSpec.describe FizzBuzz do
  it "has a version number" do
    expect(FizzBuzz::VERSION).not_to be nil
  end

  describe "#response" do
    let(:fizz_buzz){ FizzBuzz.new(i) }
    subject{ fizz_buzz.response }

    context "正常値: 0以上の数字" do
      context("1が入力されたとき")   { let(:i){ "1" };    it{ is_expected.to eq "1" } }
      context("9999が入力されたとき"){ let(:i){ "9999" }; it{ is_expected.to eq "9999" } }
    end

    context "異常値" do
      context("0以下の数字") { let(:i){ "0" };  it { expect { subject }.to raise_error(InputError) }}

      context "数字以外の文字列"
      context "全角数字"
    end
  end
end
