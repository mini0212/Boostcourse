# 네비게이션 인터페이스

## 네비게이션 인터페이스
- iOS에서 네비게이션 인터페이스는 주로 계층적 구조의 화면 전환을 위해 사용되는 드릴 다운 인터페이스(drill-down interface)이다.



## 네비게이션 컨트롤러
- 컨테이너 뷰 컨트롤러(container view controller)로써 네비게이션 스택(navigation stack)을 사용하여 다른 뷰 컨트롤러를 관리
- 컨텐츠 뷰 컨트롤러(content view controller) - 네비게이션 스택에 담겨서 컨텐츠를 보여주게 되는 뷰 컨트롤러
- 네비게이션 인터페이스의 변화에 따른 특정 액션을 동작하도록 하기 위해 네비게이션 델리게이트 객체를 사용할 수있다.
- 네비게이션 스택 뷰에 포함된 최상위 컨텐트 뷰 컨트롤러의 컨텐츠를 나타내는 뷰, 네비게이션 컨트롤러가 직접 관리하는 뷰(네비게이션 바 or 툴바) 가 있음



## 네비게이션 스택
- 뷰 컨트롤러를 담을 수 있는 배열
- 루트 뷰 컨트롤러
    - 네비게이션 스택에 가장 하위(가장 먼저 스택에 추가)에 있는 뷰 컨트롤러
    - 네비게이션 스택에서 pop되지 않음
- 최상위 뷰 컨트롤러
    - 가장 상위에 있는( 가장 마지막에 push된) 뷰 컨트롤러로 화면에 보임


### 화면 이동
- UINavigationController 클래스의 메서드 또는 segue를 사용해 컨트롤러 추가/삭제
- back버튼이나 화면 왼쪽 가장자리를 swipe해 최 상위뷰 컨트롤러 삭제

###### segue : 스토리보드에서 한 화면에서 다른 화면으로의 전환

#### push
- 네비게이션 스택에 새로운 뷰 컨트롤러가 푸시될 때 UIViewController 인스턴스가 생성되고 네비게이션 스택에 추가

###### 새로운 뷰 컨트롤러가 추가 될 때도 아래에 있는 뷰 컨트롤러들이 삭제되지 않고 유지 되어있음

#### pop
- 네비게이션 스택에 존재하는 뷰 컨트롤러가 팝 될 때 생성되었던 UIViewController의 인스턴스는 다른 곳에서 참조되고 있지 않다면 메모리에서 해제 및 스택에서 삭제



## UINavigationController 클래스
- 네비게이션 컨트롤러 생성
```swift
// 네비게이션 컨트롤러의 인스턴스를 생성하는 메서드
// 매개변수로 네비게이션 스택 가장 아래의 루트 뷰 컨트롤러가 될 컨트롤러를 넘겨 줌
init(rootViewController: UIViewController)
```

- 네비게이션 스택의 뷰 컨트롤러에 대한 접근
```swift
// 네비게이션 스택에 있는 최상위 뷰 컨트롤러에 접근하기 위한 프로퍼티
var topViewController: UIViewController?

// 현재 네비게이션 인터페이스에서 보이는 뷰와 관련된 뷰 컨트롤러에 접근하기 위한 프로퍼티
var visibleViewController: UIViewController?

// 네비게이션 스택에 특정 뷰 컨트롤러에 접근하기 위한 프로퍼티
// 루트 뷰 컨트롤러의 인덱스는 0
var viewController: [UIViewController]
```

- 네비게이션 스택의 푸시와 팝에 관한 메서드
```swift 
// 네비게이션 스택에 뷰 컨트롤러를 푸시 
// 푸시 된 뷰 컨트롤러는 최상위 뷰 컨트롤러로 화면에 표시
func pushViewController(UIViewController, animated: Bool) 

// 네비게이션 스택에 있는 최상위 뷰 컨트롤러를 팝
// 최상위 뷰 컨트롤러 아래에 있는 뷰 컨트롤러의 컨텐츠가 화면에 표시
func popViewController(animated: Bool) -> UIViewController?

// 네비게이션 스택에서 루트 뷰 컨트롤러를 제외한 모든 뷰 컨트롤러를 팝
// 루트 뷰 컨트롤러가 최상위 뷰 컨트롤러가 됨
// 삭제된 모든 뷰 컨트롤러의 배열이 반환
func popToRootViewController(animated: Bool) -> [UIViewController]?

// 특정 뷰 컨트롤러가 네비게이션 스택에 최상위 뷰 컨트롤러가 되기 전까지 상위에 있는 뷰 컨트롤러를 팝함
// ex) 1,2,3,4 뷰가 있을때 4에서 2로 바로 가고 싶을 경우 사용
func popToViewController(_ viewController: UIViewController, animated: Bool) -> [UIViewController]?
```

### 네비게이션 인터페이스를 구성하는 두 가지 방법
1. 스토리보드를 사용하여 네비게이션 인터페이스 구성하기
    1) 스토리 보드에서 네비게이션 컨트롤러에 포함할 뷰 컨트롤러 선택
    2) 메뉴에서 [Editor] - [Embed In] - [Navigation Controller] 선택
    3) 선택한 뷰 컨트롤러가 네비게이션 컨트롤러의 루트 뷰 컨트롤러가 되면서 네비게이션 컨트롤러가 생성
    4) or 객체 라이브러리에서 네비게이션 컨트롤러를 드래그 앤 드롭하면 테이블 뷰를 포함한 루트 뷰 컨트롤러가 생성되며 네비게이션 컨트롤러가 만들어짐


2. 코드 작성을 통해 네비게이션 인터페이스 구성하기
```swift
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

// 루트 뷰 컨트롤러가 될 뷰 컨트롤러를 생성
let rootViewController = UIViewController()

// 위에서 생성한 뷰 컨트롤러로 네비게이션 컨트롤러 생성
let navigationController = UINavigationController(rootViewController: rootViewController)

self.window = UIWindow(frame: UIScreen.main.bounds)

// 윈도우의 루트 뷰 컨트롤러로 네비게이션 컨트롤러 설정
self.window?.rootViewController = navigationController
self.window?.makeKeyAndVisible()

return true
}
```
## 네비게이션 바의 구성
- 네비게이션 컨트롤러에 의해 생성
- 최상위 뷰 컨트롤러가 변경될 때마다 네비게이션 컨트롤러는 네비게이션 바 업데이트

![NavigationBarImage] (./NavigationBarImage.png)

- 네비게이션 바는 네비게이션 인터페이스에서 상단에 표시
- 네비게이션 바는 네비게이션 아이템을 가질 수 있음
- 뷰 컨트롤러가 전환될 때마다 네비게이션 아이템들이 바뀌지만 네비게이션 바 자체는 네비게이션 컨트롤러가 관리하는 하나의 공통 객체
- 네비게이션 바 타이틀을 통해 최상위 뷰 컨트롤러를 알 수 있음
