//
//  SudokuRow.swift
//  SudokuSolver
//
//  Created by Huy Quang Nguyen on 10/18/20.
//

import SwiftUI

struct SudokuRow: View {
    var body: some View {
        // 1 row
        VStack {
            
            HStack(alignment: .center, spacing: 2.0) {
        
                Group {
                
                    CellTextField(cellValue: 1)
                    
                    CellTextField(cellValue: 1)
                    
                    CellTextField(cellValue: 1)
                    
                }
                
                // Black divider
                Rectangle()
                    .fill(Color.clear)
                    .frame(width: 2)
                
                Group {

                    CellTextField(cellValue: 1)
                    
                    CellTextField(cellValue: 1)
                    
                    CellTextField(cellValue: 1)
        
                }
            
                
                // Black divider
                HStack {
                    
                }.frame(width: 1)
                
                Group {
                
                    CellTextField(cellValue: 1)
                    
                    CellTextField(cellValue: 1)
                    
                    CellTextField(cellValue: 1)
                    
                }

                
            }
            .padding(.horizontal, 4.0)

            .aspectRatio(9, contentMode: .fit)
            .background(Color.black)
        }.padding(.horizontal, 2.0).background(Color.black)
        
        
    }
}

struct SudokuRow_Previews: PreviewProvider {
    static var previews: some View {
        SudokuRow()
    }
}
