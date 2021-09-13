# fizz_buzz (ruby)

- ３の倍数を入力すると、'Fizz'、
- ５の倍数を入力すると、'Buzz'
- ３と５の公倍数を入力すると、'FizzBuzz'
- 上記いずれでもない数字を入力すると、その数字
を返すプログラムです。

## 実行手順

    $ docker-compose run ruby bundle exec fizz_buzz

実行例）

    数字を入力してください：
    15
    FizzBuzz

## テスト実行手順

    $ docker-compose run ruby bundle exec rspec
