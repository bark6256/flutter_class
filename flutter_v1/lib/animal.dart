class Animal {
  // 속성
  int? age;
  double? weight;
  // 기능
  void eat(double k) {
    weight = weight! + k;
  }
  void run(double h) {
    weight = weight! - h;
  }

  Animal() {
    age = 12;
    weight = 43.6;
  }

}

void main() {

}