enum ClothingSize {
  small,
  medium,
  large,
  xLarge,
  xxLarge
}

enum TemperatureRange {
  freezing,
  cold,
  warm,
  hot
}

void main(){
  var size = ClothingSize.medium;
  print(size.runtimeType);
  print(size);

  switch(size){
    case ClothingSize.small:
      print('S 사이즈');
      break;
    case ClothingSize.medium:
      print('M 사이즈');
      break;
    case ClothingSize.large:
      print('L 사이즈');
      break;
    case ClothingSize.xLarge:
      print('XL 사이즈');
      break;
    default:
      print('XXL 사이즈');
  }
}