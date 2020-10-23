//
//  SudokuRow.swift
//  SudokuSolver
//
//  Created by Huy Quang Nguyen on 10/18/20.
//

import SwiftUI

struct SudokuRow: View {
    
    @Binding var cellObjects: [CellObject]
    
    var body: some View {
        
        
        // 1 row
        VStack {
            
            HStack(alignment: .center, spacing: 2.0) {
        
                Group {
                
                    CellTextField(cellObject: cellObjects[0])
                    
                    CellTextField(cellObject: cellObjects[1])

                    CellTextField(cellObject: cellObjects[2])
                    
                }
                
                // Black vertical divider
                Rectangle()
                    .fill(Color.clear)
                    .frame(width: 2)

                Group {

                    CellTextField(cellObject: cellObjects[3])
                    
                    CellTextField(cellObject: cellObjects[4])

                    CellTextField(cellObject: cellObjects[5])

                }


                // Black vertical divider
                Rectangle()
                    .fill(Color.clear)
                    .frame(width: 2)

                Group {

                    CellTextField(cellObject: cellObjects[6])
                    
                    CellTextField(cellObject: cellObjects[7])

                    CellTextField(cellObject: cellObjects[8])

                }

                
            }
            .padding(.horizontal, 4.0)

            .aspectRatio(9, contentMode: .fit)
            .background(Color.black)
        }
    }
}

struct SudokuRow_Previews: PreviewProvider {
    @State static var cellObjects: [CellObject] = [CellObject(cellValue: "", inputTextColor: Color.black),
                                                   CellObject(cellValue: "", inputTextColor: Color.black),
                                                   CellObject(cellValue: "", inputTextColor: Color.black),CellObject(cellValue: "", inputTextColor: Color.black),
                                                   CellObject(cellValue: "", inputTextColor: Color.black),
                                                   CellObject(cellValue: "", inputTextColor: Color.black),CellObject(cellValue: "", inputTextColor: Color.black),
                                                   CellObject(cellValue: "", inputTextColor: Color.black),
                                                   CellObject(cellValue: "", inputTextColor: Color.black)]
    
    
    static var previews: some View {
        SudokuRow(cellObjects: $cellObjects)
    }
}
