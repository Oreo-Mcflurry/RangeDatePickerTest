//
//  TestView.swift
//  RangeDatePickerTest
//
//  Created by 에스지랩 on 8/12/24.
//

import SwiftUI
import JTAppleCalendar

struct TestView: View {
    var body: some View {
        Text("Hello, World!")
    }
}
//
//struct TestCalendarView: UIViewRepresentable {
//    func makeUIView(context: Context) -> JTACMonthView {
//        let monthView = JTACMonthView()
//        monthView.translatesAutoresizingMaskIntoConstraints = false
//        monthView.ibCalendarDelegate = context.coordinator
//        monthView.ibCalendarDataSource = context.coordinator
//        monthView.minimumLineSpacing = 2
//        monthView.minimumInteritemSpacing = 0
//        monthView.showsVerticalScrollIndicator = false
//        monthView.cellSize = 46
//        monthView.allowsRangedSelection = true
//        monthView.rangeSelectionMode = .continuous
//        monthView.contentInsetAdjustmentBehavior = .always
//        return monthView
//    }
//
//    func updateUIView(_ uiView: JTACMonthView, context: Context) {
//        // 필요한 경우 업데이트 로직 추가
//    }
//
//    func makeCoordinator() -> Coordinator {
//        Coordinator(self)
//    }
//
//    class Coordinator: NSObject, JTACMonthViewDelegate, JTACMonthViewDataSource {
//        func calendar(_ calendar: JTACMonthView, willDisplay cell: JTACDayCell, forItemAt date: Date, cellState: CellState, indexPath: IndexPath) {
//            // 여기서 셀의 초기화 또는 재사용 시 필요한 설정을 할 수 있습니다.
//            configureCell(view: cell, cellState: cellState)
//        }
//
//        // 셀을 구성할 때 호출되는 메서드
//        func calendar(_ calendar: JTACMonthView, cellForItemAt date: Date, cellState: CellState, indexPath: IndexPath) -> JTACDayCell {
//            // JTACDayCell을 커스터마이징한 CustomDayCell 클래스가 있다고 가정합니다.
//            let cell = calendar.dequeueReusableJTACDayCell(withReuseIdentifier: "CustomDayCell", for: indexPath) as! CustomDayCell
//            
//            // 셀을 구성하는 로직
//            configureCell(view: cell, cellState: cellState)
//            
//            return cell
//        }
//
//        // 셀을 구성하는 로직을 분리하여 재사용 가능하게 설정
//        func configureCell(view: JTACDayCell, cellState: CellState) {
//            guard let cell = view as? CustomDayCell else { return }
//            
//            // 날짜가 오늘인지 체크하고 스타일 적용
//            if cellState.isSelected {
//                cell.dateLabel.textColor = .white
//                cell.backgroundColor = .blue
//            } else {
//                cell.dateLabel.textColor = .black
//                cell.backgroundColor = .clear
//            }
//            
//            // 달력이 현재 달인지, 이전/다음 달인지 체크하여 스타일 적용
//            if cellState.dateBelongsTo == .thisMonth {
//                cell.dateLabel.textColor = .black
//            } else {
//                cell.dateLabel.textColor = .gray
//            }
//            
//            // 날짜 텍스트 설정
//            cell.dateLabel.text = cellState.text
//        }
//    }
//        
//        var parent: TestCalendarView
//
//        init(_ parent: TestCalendarView) {
//            self.parent = parent
//        }
//
//        // MARK: - JTACMonthViewDataSource
//        func configureCalendar(_ calendar: JTACMonthView) -> ConfigurationParameters {
//            let formatter = DateFormatter()
//            formatter.dateFormat = "yyyy MM dd"
//
//            let startDate = formatter.date(from: "2023 01 01")! // 시작 날짜
//            let endDate = formatter.date(from: "2024 12 31")!   // 종료 날짜
//
//            let parameters = ConfigurationParameters(startDate: startDate, endDate: endDate)
//            return parameters
//        }
//
//        // MARK: - JTACMonthViewDelegate
//        func calendar(_ calendar: JTACMonthView, didSelectDate date: Date, cell: JTACDayCell?, cellState: CellState) {
//            // 날짜가 선택되었을 때 처리 로직
//            print("Selected date: \(date)")
//        }
//
//        func calendar(_ calendar: JTACMonthView, didDeselectDate date: Date, cell: JTACDayCell?, cellState: CellState) {
//            // 날짜가 선택 해제되었을 때 처리 로직
//            print("Deselected date: \(date)")
//        }
//
//        // 다른 Delegate 메서드도 필요에 따라 추가
//    }
//}
//
//#Preview {
//    TestView()
//}
