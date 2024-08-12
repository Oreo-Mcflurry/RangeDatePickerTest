//
//  ContentView.swift
//  RangeDatePickerTest
//
//  Created by 에스지랩 on 8/12/24.
//

import SwiftUI
import Fastis

struct ContentView: View {
    var body: some View {
        FastisView(mode: .range, dismissHandler: { action in
            switch action {
            case .done(let resultDate):
                print(resultDate) // resultDate is Date
            case .cancel:
                break
            }
        })
//        .initialValue(self.currentValue as? FastisRange)
        .maximumDate(Calendar.current.date(byAdding: .month, value: 0, to: Date()))
        .allowToChooseNilDate(true)
        .allowDateRangeChanges(false)
        .toolbar(.hidden, for: .navigationBar)
    }
}

#Preview {
    ContentView()
}
