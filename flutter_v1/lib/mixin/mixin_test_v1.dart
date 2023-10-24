// 믹스인 정의 - mixin 키워드를 사용한다.
mixin LoggingMixin {
  String tag = 'LoggingMixin';
  // LoggingMixin(this.tag); // Mixin은 생성자를 가질 수 없다.
  void log(String message) {
    print('Log - $tag : $message');
  }
}
// 믹스인 활용 - with 키워드 사용
class User with LoggingMixin {
  String name;
  User(this.name);
}

void main() {
  User user = User('홍길동');
  user.tag = 'User';
  user.log('TEST USER CLASS');
}
