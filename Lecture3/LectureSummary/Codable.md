# Codable


### 인코딩과 디코딩
- 인코딩(Encoding) - 정보의 형태나 형식을 표준화, 보안, 처리 속도 향상, 저장 공간 절약 등을 위해서 다른 형태나 형식으로 변환하는 처리 호근 그 처리 방식을 뜻함
- 디코딩(Decoding) - 인코딩의 반대 작업을 수행하는 것을 뜻함
- 인코더(Encoder) - 부호화를 수행하는 장치나 회로, 컴퓨터 소프트웨어, 알고리즘을 뜻함


### Codable
Codable은 스위프트4 버전에서 처음 소개된 프로토콜로 JSON형식으로 서버와 애플리케이션이 통힌한다면 Codable 프로토콜을 이용해 인코딩 및 디코딩 할 수 있다.

```swift
typealias Codable = Decodable & Encodable
```

- Decodable - 스위프트의 인스턴스로 디코딩할 수 있는 프로토콜
- Encodable - 스위프트의 인스턴스를 인코딩할 수 있는 프로토콜


### 예제
- Codable & CodingKey
Coordinate, LandMark타입의 인스턴스를 다른 데이터 형식으로 변환 하고 싶은 경우 Codable 프로토콜을 준수하여야 한다.
자주 사용하게 될 JSON 형태의 데이터로 상호 변환하고자 할 때 기본적으로 인코딩/디코딩할 JSON타입의 키와 애플리케이션의 사용자 정의 프로퍼티가 일치해야한다. JSON 키 이름을 구조체 프로퍼티의 이름과 다르게 표현하려면 타입내부에 string 타입의 원시값을 갖는 CodingKeys 라는 이름을 열거형으로 선언하고 CodingKey 프로토콜을 준수하도록 한다. 만약 JSON 타입의 키와 프로퍼티 이름이 일치한다면 값을 할당하지 않아도 무방하다.

```swift
struct Coordinate: Codable {
    var latitude: Double
    var longtitude: Double
}

struct Landmark: Codable {
    var name: String
    var foundingYear: Int
    var location: Coordinate
    var vantagePoints: [Coordinate]

    enum CodingKeys: String, CodingKey {
        case name = "title"
        case foundingYear = "founding_date"
        case locationm vantagePoints
    }
}
```


#부스트코스 # iOS프로그래밍
