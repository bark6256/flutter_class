abstract class Shape {
  double Area();
}

class Circle implements Shape {
  double radius;
  Circle(this.radius);

  @override
  double Area() {
    return 3.14 * radius * radius;
  }
}

class Rectangle implements Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double Area() {
    return width * height;
  }
}

void main() {
  List<Shape> shapes = [Circle(5.0), Rectangle(6.0, 2.0)];

}
