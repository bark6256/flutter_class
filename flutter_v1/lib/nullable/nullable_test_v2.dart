void main() {
  // 1. null 에 안전한 객체의 사용 가능한 속성 접근
  String? maybeName;
  int length = maybeName?.length ?? 0; // maybeName이 null이면 0으로 반환
  print('length : $length');

  // 2. null 에 안전한 객체 메서드 접근
  String? name = getName(); // null 또는 문자열을 반환할 수 있다.
  String returnName = name?.toLowerCase() ?? 'a';
  print('returnName : $returnName');

  // 3
  String displayName = name ?? "unKnow";
  print('displayName : $displayName');
}

String? getName() {
  return null;
}