//
//  CellValue.swift
//  SudokuSolver
//
//  Created by Huy Quang Nguyen on 10/23/20.
//

import SwiftUI

class CellObject: ObservableObject {

    @Published var entry:String 
    
    @Published var textColor: Color = Color.black
    
    init(cellValue: String, inputTextColor: Color) {
        self.entry = cellValue
        self.textColor = inputTextColor
    }
}

struct CellObject_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
