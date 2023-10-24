class Table {
  String? name;
  String? color;

  // 이름 있는 매개변수는 {}를 사용하며, 가독성을 높일 수 있다.
  Table({this.name, this.color});

  void display() {
    print('name : $name');
    print('color : $color');
  }

} // end of class Table
void main() {
  // Table table = Table('고급의자', '검정');
  Table table = Table(color: '빨강', name: '게이밍의자');
  table.display();
}
