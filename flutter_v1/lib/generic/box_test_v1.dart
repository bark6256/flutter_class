class Box<T> {
  T value;

  Box(this.value);

  T getValue() {
    return value;
  }
}

void main() {
  var stringBox = Box<String>("Hello");
  var intBox = Box<int>(12);

  print(stringBox.getValue());
  print(intBox.getValue());

  var numbers = [1,2,3,4,5];
  var firstEven = findFirst(numbers, (n) => n % 2 == 0 );
  var firstOdd = findFirst(numbers, (n) => n % 2 == 1);

  var lastEven = findLastEven(numbers, (n) => n % 2 == 0);
  print('lastEven : $lastEven');
}

// 제너릭 함수 사용
T? findFirst<T>(List<T> items, bool Function(T) check) {
  var count = 0;

  for(var i in items){
    count++;
    print('count : $count, item : $i');
    // check는 함수다. data 타입은 어떤게 들어와도 된다.

    if(check(i)){
      return i;
    }
  }
  return null;
}

T? findLastEven<T>(List<T> items, bool Function(T) check){
  var count = 0;
  List<T> rItems = items.reversed.toList();
  for(var i in rItems){
    count++;
    print('count : $count, item : $i');
    // check는 함수다. data 타입은 어떤게 들어와도 된다.

    if(check(i)){
      return i;
    }
  }
  return null;
}