//
//  CellTextField.swift
//  SudokuSolver
//
//  Created by Huy Quang Nguyen on 10/18/20.
//

import SwiftUI

struct CellTextField: View {
    @State private var cellHeight = (UIScreen.main.bounds.width - 2 - 8)/9
    @State var cellValue: Int
    var body: some View {
        HStack {
            TextField( "", value: $cellValue, formatter: NumberFormatter())
                    .frame(height: cellHeight)
                    .multilineTextAlignment(.center)
        }
        .padding(0.0)
        .background(Color.white)
    }
}

struct CellTextField_Previews: PreviewProvider {
    
    @State static var value: Int = 1
    static var previews: some View {
        CellTextField(cellValue: value)
    }
}
