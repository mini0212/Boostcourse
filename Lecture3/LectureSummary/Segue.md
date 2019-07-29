# Segue


### Segue 란?
- 세그는 스토리보드에서 뷰 컨트롤러 사이의 화면 전환을 위해 사용하는 객체
- 별도의 코드 없이도 스토리보드에서 세그를 연결하여 뷰 컨트롤러 사이의 화면 전환을 구현


### UIStoryboardSegue Class
- UIStoryboardSegue클래스는 UIKit에서 사용할 수 있는 표준 전환을 위한 프로퍼티와 메서드를 포함
- 커스텀 전환을 정의하기 위해 서브클래스를 구현해 사용
- 필요에 따라 UIViewController의 performSegue(withIdentifier:sender:) 메서드를 사용해 세그 객체를 코드로 실행할 수 있음
- 세그는 뷰 컨트롤러의 뷰를 다른 뷰로 전환 할 때 뷰 컨트롤러의 prepare(for:sender:) 메서드를 사용해 데이터를 전달 가능


### 주요 프로퍼티
- var sourc: UIViewController - 세그에 전환을 요청하는 뷰 컨트롤러
- var destination: UIViewController - 전환될 뷰 컨트롤러
- var identifier: String? - 세그 객체의 식별자

### 주요 메서드
 - func perform() - 뷰 컨트롤러의 전환을 수행
