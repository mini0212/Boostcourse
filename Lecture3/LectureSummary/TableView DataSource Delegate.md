# TableView DataSource & Delegate


- UITableView 객체는 데이터소스와 델리게이트가 없다면 정상적으로 동작하기 어렵다.

![TableViewDataSource&Delegate](./Images/TableViewDataSource&Delegate)



### DataSource
- 테이블뷰 데이터 소스 객체는 UITableViewDataSource 프로토콜을 채택한다.
- 테이블 뷰를 생성하고 수정하는데 필요한 정보를 테이블 뷰 객체에 제공
- 데이터 모델의 델리게이트로, 테이블 뷰의 시각적 모양에 대한 최소한의 정보를 제공
- UITableView 객체에 섹션의 수와 행의 수를 알려주며, 행의 삽입, 삭제 및 재정렬하는 기능을 선택적으로 구현 가능
- UITableViewDataSource 프로토콜 주요 메서드

```swift
// 필수로 구현
@required
// 특정 위치에 표시할 셀을 요청하는 메서드
func tableView(UITableView, cellForRowAt: IndexPath)

//각 섹션에 표시할 행의 갯수를 묻는 메서드
func tableView(UITableView, numberOfRowInSection: Int)

// 선택적 구현
@optional
// 테이블 뷰의 총 섹션 갯수를 묻는 메서드
func numberOfSection(in: UITableView)

// 특정 섹션의 헤더 혹은 푸터 타이틀을 묻는 메서드
func tableView(UITableView, titleForHeaderInSection: Int)
func tableView(UITableView, titleForFooterInSection: Int)

// 특정 위치의 행을 삭제 또는 추가 요청하는 메서드
func tableView(UITableView, commit: UITableViewCellEditingStyle, forRowAt: IndexPath)

// 특정 위치의 행이 편집 가능한지 묻는 메서드
func tableView(UITableView, canEditRowAt: IndexPath)

// 특정 위치의 행을 재정렬 할 수 있는지 묻는 메서드
func tableView(UITableView, canMoveRowAt: IndexPath)

// 특정 위치의 행을 다른 위치로 옮기는 메서드
func tableView(UITableView, moveRowAt: IndexPath, to: IndexPath)
```


### Delegate
- 테이블 뷰 델리게이트 객체는 UITableViewDelegate 프로토콜을 채택한다.
- 테이블 뷰의 시각적인 부분 수정, 행의 선택 관리, 액세서리 뷰 지원, 테이블 뷰의 개별 행 편집을 도움
- 델리게이트 메서드를 활용해 테이블 뷰의 세세한 부분 조정 가능
```swift
// 필수로 구현해야하는 메서드는 없음
// 특정 위치 행의 높이를 묻는 메서드
func tableView(UITableView, heightForRowAt: IntdexPath)

// 특정 위치 행의 들여쓰기 수준을 묻는 메서드
func tableView(UITableView, indentationLevelForRowAt: IndexPath)

// 지정된 행의 선택이 헤제되었음을 알리는 메서드
func tableView(UITableView, didDeselectRowAt: IndexPath)

// 특정 섹션의 헤더뷰 또는 푸터뷰를 요청하는 메서드
func tableView(UITableView, viewForHeaderInSection: Int)
func tableView(UITableView, viewForFooterInSection: Int)

// 특정 섹션의 헤더뷰 또는 푸터뷰의 높이를 물어보는 메서드
func tableView(UITableView, heightForHeaderInSecion: Int)
func tableView(UITableView, heightForFooterInSeciton: Int)

// 테이블뷰가 편집모드에 들어갔음을 알리는 메서드
func tableView(UITableView, willBeginEditingRowAt: IndexPath)

// 테이블뷰가 편집모드에서 빠져나왔음을 알리는 메서드
func tableView(UITableView, didEndEditingRowAt: IndexPath?)
```

### 참고
- [UITableViewDataSource](https://developer.apple.com/documentation/uikit/uitableviewdatasource)
- [UITableViewDelegate](https://developer.apple.com/documentation/uikit/uitableviewdelegate)



