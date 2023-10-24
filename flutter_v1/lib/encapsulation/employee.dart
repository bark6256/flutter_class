class Employee {

  // dart 접근제어 : public, private 2가지가 있다.
  // 변수를 private로 선언하는 방법 : 언더스코어(_)를 사용한다.
  int? _id;
  String? _name;

  int getId() {
    return _id!;
  }
  void setId(int id) {
    if(id < 0){
      print('잘못된 입력값입니다.');
    }
    this._id = id;
  }

  String getName() {
    return _name!;
  }
  void setName(String name){
    this._name = name;
  }

}