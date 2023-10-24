void main() {
  Exception exception;
  Error error;

  try {
    int result = 10 ~/ 0;
    print('result = $result');
  } on IntegerDivisionByZeroException {
    print('0으로 나눌 수 없습니다.');
  } on UnsupportedError {
    print('제공하지 않는 라이브러리입니다.');
  } catch(e, s) {
    print('error : $e');
  }

  print('----------------------');
  
}

