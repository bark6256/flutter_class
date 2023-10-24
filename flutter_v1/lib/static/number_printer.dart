class NumberPrinter {
  int _id;
  static int waitNumber = 1;

  NumberPrinter(this._id);

  void printWaitNumber() {
    print('대기 순번 : $waitNumber');
    waitNumber++;
  }

}

void main() {
  NumberPrinter numberPrinter1 = NumberPrinter(1);
  numberPrinter1.printWaitNumber();
  numberPrinter1.printWaitNumber();
  numberPrinter1.printWaitNumber();

  NumberPrinter numberPrinter2 = NumberPrinter(2);
  numberPrinter2.printWaitNumber();
  numberPrinter2.printWaitNumber();
  numberPrinter2.printWaitNumber();

}

