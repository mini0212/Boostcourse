# UIDatePicker

### Date picker를 인터페이스에 추가하기
- Date picker를 생성하고 모드를 설정한다.
- 필요한 경우 최소 및 최대 날짜와 같은 추가 구성 옵션을 제공한다.
- Date picker에 액션 메서드 연결

### Date picker에 액션 메서드 연결하기
- 값이 변경될 때 알림을 받기 위해 액션 메서드를 valueChanged로 설정
- 실행 시점에서 Date picker는 사용자의 날짜 및 시간을 선택하게 되면 설정된 액션 메서드를 호출 함
- Date picker를 액션 메서드에 연결하기 위해 인터페이스 빌더를 이용하거나 코드로 addTarget(_:action:for:) 메서드 사용



### Date picker의 주요 인터페이스 빌더 속성
- Mode - Date picker의 모드를 설정, 코드로는 datePickerMode 프로퍼티를 사용해 접근
- Locale - Date picker에 사용될 로케일, 코드로는 locale 프로퍼티를 통해 접근
- Interval - 현재 선택된 모드의 분 간격을 나타냄, 선택 값은 60의 제수여야 함, 코드로는 minnuteInterval 프로퍼티를 통해 접근
- Constraints - Date 하단의 Minimum Date 와 MaximumDate를 통해 Date picker가 보여줄 날짜의 범위를 설정할수 있음, 코드로는 minimumDate, maximumDate 프로퍼티를 통해 설정
- Timer - 카운트다운 타이머 모드에서 date picker의 표시되는 초기값, 값은 초단위로 계산되지만 보이는 것은 분 단위로 표시, 코드로는 countDownDuration 프로퍼티를 통해 접근


### UIDatePicker 클래스의 주요 프로퍼티
- var datePickerMode: UIDatePickerMode - Date picker의 모드를 결정
    - 기본값은 dateAndTime
    - time, date, dateAndTime, countDownTimer 모드로 설정
- var date: Date - date picker에 보여지게 될 날짜
- var calendar: Calendar! - date picker에 사용되는 캘린더
- var locale: Locale? - date picker에서 사용되는 로케일
- var timeZone: TimeZone? - date picker에서 표시된 날짜에 반영된 시간대
- var maximumDate: Date? - date picker에서 보여줄 수 있는 최대 날짜
- var minimumDate: Date? - date picker에서 보여줄 수 있는 최소 날짜
- minuteInterval: Int - date picker에서 분을 표시하는 간격, 기본값과 최솟값은 1 최댓값은 30
- var countDownDuration: TimeInterval - date picker의 모드가 countDownTimer로 설정될 경우 date picker에 표시되는 초기값


### UIDatePicker 클래스의 주요 메서드
- func setDate(Date, animated: Bool) - date picker에 처음 표시할 날짜를 설정



### [DateFormatter](https://developer.apple.com/documentation/foundation/dateformatter)
- 날짜와 텍스트 표현 간의 변환을 알게해 준다
- DateFormatter를 활용해 날짜와 시간을 다양한 방식으로 출력하거나 출력된 날짜 및 시간에 대한 문자열을 읽어올 수 있다
- DateFormatter의 인스턴스는 Date 객체의 문자열 표현을 생성하고, 날짜 및 시간의 텍스트 표현을 Date 객체로 변환

#### 사용자 날짜 및 시간 표현
날짜 표시에 특정 요구사항이 있다면 date formatter의 dateStyle과 timeStyle 프로퍼티를 설정

#### 고정 형식 날짜 표현
고정 형식의 날짜로 사용해야 한다면 dateFormat프로퍼티를 특정 포맷 문자열로 설정


#### DateFormatter의 주요 프로퍼티와 메서드
- func date(from: String) - 주어진 문자열을 Date 객체(날짜와 시간)로 변환해 반환
- func string(from: Date) - 주어진 Date 객체를 문자열로 변환해 반환
- func setLocalizedDateFormatFromTemplate(String) - 지정된 로케일을 사용하여 날짜 형식 설정
- var dateStyle: DateFormatter.Style - DateFormatter의 날짜 형식
- var timeStyle: DateFormatter.Style - DateFormatter의 시간 형식
- var dateFormat: String! - 고정 형식 날짜 표현을 사용할 때의 날짜 형식
- var local: Locale! - DateFormatter의 로케일
- var timeZone: TimeZone! - DateFormatter의 시간대




#### 예제
- Date -> String
```swift
import UIKit

let dateFormatter = DateFormatter()
dateFormatter.dateStyle = .full
dateFormatter.timeStyle = .none

let date = Date(timeIntervalSinceReferenceDate: 118800)

// Korean Locale
dateFormatter.locale = Locale(identifier: "ko_KR")
print(dateFormatter.string(from: date)) // 2019년 7월 23일 화요일
```

- String -> Date
```swift
import UIKit

let dateFormatter = DateFormatter()

let dateString = "2019-07-23 22:11:32 +0000"
dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss ZZZ"
print(dateFormatter.date(from:dateString)!) // 2019-07-23 22:11:32 +0000""
```


#부스트코스 #iOS 프로그래밍
