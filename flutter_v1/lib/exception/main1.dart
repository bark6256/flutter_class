void main() {
  Exception exception;
  Error error;

  try {
    int result = 10 ~/ 0;
    print('result = $result');
  } catch(e) {
    print('An error : $e');
  } finally {
    print('반드시 실행되는 블록');
  }

  print('----------------------');
  
}

