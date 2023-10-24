import 'dart:convert';

void main() {
  String jsonStr = '''
    {
      "albumId": 1,
      "id": 1,
      "title": "accusamus beatae ad facilis cum similique qui sunt",
      "url": "https://via.placeholder.com/600/92c952",
      "thumbnailUrl": "https://via.placeholder.com/150/92c952"
    }
  ''';

  // 파싱1 - Map 변환
  // Map 타입의 변수에 값을 넣을때 json으로 decode 한다.
  Map<String, dynamic> jsonMap = json.decode(jsonStr);
  print('jsonMap : ${jsonMap.toString()}');
  print('------------------------------');
  // 파싱2 - 클래스 설계
  // 명명된 생성자에서 Map형식으로 받아 변수 = json["key"] 형식으로 생성한다
  MyPhoto myPhoto = MyPhoto.fromJson(jsonMap);
  print(myPhoto.toString());
}

class MyPhoto {
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  MyPhoto(this.albumId, this.id, this.title, this.url, this.thumbnailUrl);

  MyPhoto.fromJson(Map<String, dynamic> json)
      : albumId = json["albumId"]
      , id = json["id"]
      , title = json["title"]
      , url = json["url"]
      , thumbnailUrl = json["thumbnailUrl"];

  // class도 오브젝트 이기 때문에 toString 매서드가 존재 하지만
  // 실제로 작동하는 코드는 직접 오버라이드 해서 사용해야 한다.
  @override
  String toString() {

    return 'albumId : $albumId, id : $id, title : $title, url : $url, thumbnailUrl : $thumbnailUrl';
  }
}