void main() {

  Rectangle rectangle = Rectangle();

  try {
    // 예외가 발생 할 수 있는 코드를 작성
    double result = rectangle.calculateArea();
    print('직사각형의 넓이 : $result');
  } catch(e) {
    print('에러 확인 : $e');
  }

  print('여기가 실행이 될까');

}

class Rectangle {
  double? width;
  double? height;

  double calculateArea() {
    return width! * height!; // 개발자가 명시적으로 !를 사용해 null이 아님을 명시 할 수 있다.
  }
}
