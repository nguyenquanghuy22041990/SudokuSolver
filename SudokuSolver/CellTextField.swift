//
//  CellTextField.swift
//  SudokuSolver
//
//  Created by Huy Quang Nguyen on 10/18/20.
//

import SwiftUI

struct CellTextField: View {
    @State private var cellHeight = (UIScreen.main.bounds.width - 2 - 8)/9
    @Binding var cellValue: String
    @Binding var textColor: Color
    var body: some View {
        HStack {
            TextField( "", text: $cellValue)
                    .frame(height: cellHeight)
                    .multilineTextAlignment(.center)
                .foregroundColor(textColor)
        }
        .padding(0.0)
        .background(Color.white)
    }
}

struct CellTextField_Previews: PreviewProvider {
    
    @State static var value: String = "1"
    @State static var textColor: Color = Color.black
    static var previews: some View {
        CellTextField(cellValue: $value, textColor: $textColor)
    }
}
