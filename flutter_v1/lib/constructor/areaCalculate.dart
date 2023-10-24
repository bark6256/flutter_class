class Circle {
  double radius;

  Circle(this.radius);

  double calculateCircleArea(){
    return 3.14 * radius * radius;
  }
}

class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  double calculateRactangleArea(){
    return width * height;
  }
}

void main() {
  Circle circle = Circle(5);
  double circleArea = circle.calculateCircleArea();
  print('원의 넓이 : $circleArea');

  Rectangle rectangle = Rectangle(3, 4);
  double rectangleArea = rectangle.calculateRactangleArea();
  print('직사각형의 넓이 : $rectangleArea');
}
