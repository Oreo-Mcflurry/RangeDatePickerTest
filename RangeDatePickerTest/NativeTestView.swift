//
//  NativeTestView.swift
//  RangeDatePickerTest
//
//  Created by 에스지랩 on 8/12/24.
//

import SwiftUI

struct NativeTestView: View {
    @State private var dates = Set<DateComponents>()
    @State private var date = Date()
    var body: some View {
        DatePicker("", selection: $date)
    }
}

#Preview {
    NativeTestView()
}
