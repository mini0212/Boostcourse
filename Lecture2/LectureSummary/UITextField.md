# UITextField
- 사용자가 인터페이스에서 편집 가능한 텍스트 영역을 나타내내고, 사용자가 키보드를 통해 입력하는 문자열 데이터를 활용 가능
- Target-Action 디자인 패턴과 델리게이트 객체를 사용하여 텍스트 편집 이벤트에 관해 다룸


### 키보드 보여주기/숨기기
- 사용자가 textField를 탭하거나 becomeFirstResponder() 메서드를 직접 호출해 보여줌
- resignFirstResponder() 또는 endEditing(_:) 메서드를 호출해 숨김

#### 인터페이스 빌더에서 설정 가능한 속성
- [텍스트 필드](https://developer.apple.com/documentation/uikit/uitextfield#1653000) 에서 Table1
- [키보드 속성](https://developer.apple.com/documentation/uikit/uitextfield#1965766) 에서 Table2


### [TextField Delegate](https://developer.apple.com/documentation/uikit/uitextfielddelegate)
- 텍스트필드는 델리게이트 객체의 도움을 받아 텍스트 편집의 이벤트 등을 롼리
- 사용자가 텍스트 필드를 통한 작업을 할 때 관련 이벤트들을 델리게이트 객체에 알리고 사용해 여러 이벤트를 처리 가능


### UITextField클래스의 주요 프로퍼티
- var delegate: UITextFieldDelegate? - 텍스트필드의 델리게이트 객체
- var text: String? - 텍스트필드에 보여지는 문자열
- var placeholder: String? - 텍스트 필드에 아무것도 입력되어 있지 않을 때 기본으로 보이게 되는 문자열, 텍스트필드에 텍스트가 입력되면 자동으로 사라짐
- var font : UIFont? - 텍스트의 폰트를 설정
- var textColor: UIColor? - 텍스트의 색상을 설정
- var textAlignment: NSTextAlignment - 텍스트의 정렬을 설정
- var isEditing: Bool - 현재 텍스트 필드가 편집 모드에 있는지 나타냄
- var background: UIImage? 텍스트필드가 enable 되어 있을 때의 배경이미지를 나타냄
- var disabledBackground: UIImage? - 텍스트 필드가 disabled 되어 있을 때의 배경 이미지를 나타냄
- var clearButtonMode: UITextFieldViewMode - 텍스트 필드의 텍스트를 모두 지울 수 이쓴ㄴ 컨트롤을 텍스트 필드에 나타나게 할 수 있음


### UITextFieldDelegate 프로토콜의 주요 메서드
- func textFieldShouldBeginEditint(UITextField) - 델리게이트 객체에게 텍스트 빌드에서 텍스트 편집 시작을 요청
- func textFieldDidBeginEditint(UITextField) - 델리게이트에게 텍스트 필드에서 편집이 시작되었음을 객체에 알림
- func textField(UITextField, shouldChangeCharactersIn: NSRange, replacementString: String) - 델리게이트 객체에게 현재 텍스트의 수정을 요청
- func textFieldShouldEndEditing(UITextField) - 델리게이트 객체에게 텍스트 편집 중지를 요청

