//
//  CellTextField.swift
//  SudokuSolver
//
//  Created by Huy Quang Nguyen on 10/18/20.
//

import SwiftUI

struct CellTextField: View {
    var cellHeight = (UIScreen.main.bounds.width - 26)/9
    
    @ObservedObject var cellObject: CellObject
    
    var body: some View {
        HStack {
            TextField( "", text: $cellObject.entry)
                    .frame(height: cellHeight)
                    .multilineTextAlignment(.center)
                .foregroundColor(cellObject.textColor)
                .keyboardType(.numberPad)
                .lineLimit(1)
                .onChange(of: cellObject.entry, perform: { value in
                    
                    if cellObject.entry.count > 1 {
                        cellObject.entry = cellObject.entry[cellObject.entry.startIndex].description
                    }
                })
        }
        .padding(0.0)
        .background(Color.white)
    }
}

struct CellTextField_Previews: PreviewProvider {
    
    @State static var cellObject = CellObject(cellValue: "2", inputTextColor: Color.black)
    
    static var previews: some View {
        CellTextField(cellObject: cellObject)
    }
}
