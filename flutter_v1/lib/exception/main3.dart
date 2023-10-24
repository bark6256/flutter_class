// 예외 던지기
void main() {
  try {
    throw Exception('unknown Error');
  } catch (e, s) {
    print('예외 발생');
  }
  print('end of code');
}