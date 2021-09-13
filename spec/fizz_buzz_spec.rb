RSpec.describe FizzBuzz do
  it "has a version number" do
    expect(FizzBuzz::VERSION).not_to be nil
  end

  describe "#response" do
    let(:fizz_buzz){ FizzBuzz.new(i) }
    subject{ fizz_buzz.response }

    context "正常値: 0以上の数字" do
      context "0以上の数字" do
        context("1")   { let(:i){ "1" };    it{ is_expected.to eq "1" } }
        context("9998"){ let(:i){ "9998" }; it{ is_expected.to eq "9998" } }
      end

      context "3の倍数" do
        context("3")   { let(:i){ "3" };    it{ is_expected.to eq "Fizz" } }
        context("6")   { let(:i){ "6" };    it{ is_expected.to eq "Fizz" } }
        context("9999"){ let(:i){ "9999" }; it{ is_expected.to eq "Fizz" } }
      end

      context "5の倍数" do
        context("5")   { let(:i){ "5" };    it{ is_expected.to eq "Buzz" } }
        context("10")  { let(:i){ "10" };   it{ is_expected.to eq "Buzz" } }
      end
    end

    context "異常値" do
      context("0以下の数字: 0")      { let(:i){ "0" };  it { expect { subject }.to raise_error(InputError) }}
      context("0以下の数字:-1")      { let(:i){ "-1" }; it { expect { subject }.to raise_error(InputError) }}
      context("数字以外の文字列: A") { let(:i){ "A" };  it { expect { subject }.to raise_error(InputError) }}
      context("全角数字: １")        { let(:i){ "１" }; it { expect { subject }.to raise_error(InputError) }}
    end
  end
end
