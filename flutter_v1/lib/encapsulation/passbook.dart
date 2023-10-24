// 통장 클래스
class Passbook {
  String? _name;
  String? _accountNumber;
  int? _accountBalance;

  // private 변수는 명명된 매개변수를 만들 수 없다.
  Passbook(this._name, this._accountNumber, this._accountBalance);

  // 축약형 getter, setter 만들기 (dart 문법)
  String? get name => _name;
  String? get accountNumber => _accountNumber;
  int? get accountBalance => _accountBalance;
  set name(String? name) => _name = name;
  set accountNumber(String? accountNumber) => _accountNumber = accountNumber;
  set accountBalance(int? accountBalance) => _accountBalance = accountBalance;

  void deposit(int money) {
    this._accountBalance = (this._accountBalance ?? 0) + money;
    print('입금 완료');
  }

  int withdraw(int money) {
    int currentMoney = this._accountBalance ?? 0;
    if(currentMoney < money) {
      print('잔액 부족');
      return 0;
    } else {
      currentMoney -= money;
      this._accountBalance = currentMoney;
      print('출금 완료');
      return money;
    }
  }
}