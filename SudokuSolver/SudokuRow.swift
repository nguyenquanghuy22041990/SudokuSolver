//
//  SudokuRow.swift
//  SudokuSolver
//
//  Created by Huy Quang Nguyen on 10/18/20.
//

import SwiftUI

struct SudokuRow: View {
    
    @Binding var sudokuRow: [String]
    
    @Binding var textColors: [Color]
    
    var body: some View {
        // 1 row
        VStack {
            
            HStack(alignment: .center, spacing: 2.0) {
        
                Group {
                
                    CellTextField(cellValue: $sudokuRow[0], textColor: $textColors[0])
                    
                    CellTextField(cellValue: $sudokuRow[1], textColor: $textColors[1])
                    
                    CellTextField(cellValue: $sudokuRow[2], textColor: $textColors[2])
                    
                }
                
                // Black divider
                Rectangle()
                    .fill(Color.clear)
                    .frame(width: 2)
                
                Group {

                    CellTextField(cellValue: $sudokuRow[3], textColor: $textColors[3])
                    
                    CellTextField(cellValue: $sudokuRow[4], textColor: $textColors[4])
                    
                    CellTextField(cellValue: $sudokuRow[5], textColor: $textColors[5])
        
                }
            
                
                // Black divider
                HStack {
                    
                }.frame(width: 2)
                
                Group {
                
                    CellTextField(cellValue: $sudokuRow[6], textColor: $textColors[6])
                    
                    CellTextField(cellValue: $sudokuRow[7], textColor: $textColors[7])
                    
                    CellTextField(cellValue: $sudokuRow[8], textColor: $textColors[8])
                    
                }

                
            }
            .padding(.horizontal, 4.0)

            .aspectRatio(9, contentMode: .fit)
            .background(Color.black)
        }.padding(.horizontal, 2.0).background(Color.black)
        
        
    }
}

struct SudokuRow_Previews: PreviewProvider {
    @State static var sudokuRow: [String] = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
    
    @State static var textColors: [Color] = [Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.red]
    
    static var previews: some View {
        SudokuRow(sudokuRow: $sudokuRow, textColors: $textColors)
    }
}
