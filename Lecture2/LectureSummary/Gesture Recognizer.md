# Gesture Recognizer
특정 제스처 이벤트가 일어날 때 마다 각 타깃에 맞는 액션 메시지를 보내어 제스처 관련 이벤트를 처리할 수 있다


### UIGestureRecognizer class의 하위 클래스
- UITapGestureRecognizer: 싱글탭 또는 멀티탭 제스처
- UIPinchGestureRecognizer: 핀치(Pinch) 제스처
- UIRotationGestureRecognizer: 회전 제스처
- UISwipeGestureRecognizer: 스와이프(swipe) 제스처
- UIScreenEdgePanGestureRecognizer: 화면 가장자리 드래그 제스처
- UILongPressGestureRecognizer: 롱프레스(long-press) 제스처
    - 제스처 인식기를 사용하기 위해서 target-action 연결을 설정한 후 UIView메서드인 addGestureRecognizer(_:)메서드를 통해 뷰를 연결, 제스처가 인식되면 해당 제스터 이벤트에 연결된 타깃에 액션 메시지가 전달
```swift
// 호출되는 메서드의 구현 형식들
@IBAction func myActionMethod()
@IBAction func myActionMethod(_ sender: UIGestureRecognizer)
```
    - 윈도우는 뷰에 터치이벤트를 전달하기 전에 뷰에 추가된 제스처 인식기에 터치 이벤트를 전달함
    - 제스처 인식기가 터치 이벤트를 인식했을 경우 뷰는 터치 이번트를 받지 못함
    - 제스처 인식기가 터치 이벤트를 인식하지 못했을 경우 터치 이벤트를 뷰가 받음
    - 일반적인 제스처 인식기 동작의 흐름은 cancelTouchesInView, delaysTouchesBegan, delaysTouchesEnded 프로퍼티 값의 영향을 받음



### UIGestureRecognizer의 주요 메서드
- init(target: Any?, action: Selector?) - 제스처 인식기를 타깃-액션의 연결을 통해 초기화
- func location(in: UIView) -> CGPoint - 제스터가 발생한 좌표를 반환
- func addTarget(Any, action: Selector) - 제스처 인식기 객체로부터 타깃과 액션을 추가
- func removeTarget(Any?, action: Selector?) - 제스처 인식기 객체로부터 타깃과 액션을 제거
- func require(toFail: UIGestureRecognizer) - 여러 개의 제스처 인식기를 가지고 있을 때, 제스처 인식기 사이의 의존성 설정

### UIGestureRecognizer의 주요 프로퍼티
- var state: UIGestureRecognizerState - 현재 제스처 인식기의 상태를 나타냄
- var view: UIView? - 제스처 인식기가 연결된 뷰
- var isEnabled: Bool - 제스처 인식기가 사용 가능한 상태인지 나타냄
- var cancelsTouchInView - 제스처가 인식되었을 때 터치 이벤트가 뷰로 전달되는 여부에 영향을 미침
    - 이 프로퍼티가 true(기본값)이고 제스처 인식기가 제스처를 인식했다면, 해당 제스처의 터치는 뷰로 전달되지 않음
    - 이전에 전달된 터치들은 touchesCancelled(_:with:) 메시지를 통해 취소
    - 제스처 인식기가 제스처를 인식 못하거나 이 프로퍼티의 값이 false라면 뷰가 모든 터치를 전달 받음
- var delaysTouchesBegan - began 단계에서 제스처 인식기가 추가된 뷰에 터치의 전달 지연 여부 결정
- var delaysTouchesEnded - end 단계에서 제스처 인식기가 추가된 뷰에 터치의 전달 지연 여부 결정



### iOS Standard Gesture
1. Tap : 컨트롤을 활성화하거나 항목을 선택
2. Drag : 아이템을 좌우 또는 화면으로 드래그
3. Flick : 빠르게 스크롤하거나 화면을 넘김
4. Swipe : 이전 화면으로 돌아가거나 테이블 뷰에서 숨겨진 삭제 버튼을 표시
5. Double tap : 이미지 또는 콘텐츠를 확대하거나 다시 축소
6. Pinch : 이미지를 세밀하게 확대하거나 축소
7. Touch and hold : 편집 가능한 텍스트 또는 선택 가능한 텍스트에서 수행될 경우 커서 지정을 위한 확대보기가 표시,  컬렉션 뷰의 경우 항목을 재배치할 수 있는 모드로 진입
8. Shake : 실행 취소 또는 다시 실행 alert를 띄움 
