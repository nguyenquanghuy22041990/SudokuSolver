//
//  ContentView.swift
//  SudokuSolver
//
//  Created by Huy Quang Nguyen on 10/18/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var sudokuCells: [[String]] = [
        ["", "", "", "", "", "", "", "", ""],
        ["", "", "", "", "", "", "", "", ""],
        ["", "", "", "", "", "", "", "", ""],
        ["", "", "", "", "", "", "", "", ""],
        ["", "", "", "", "", "", "", "", ""],
        ["", "", "", "", "", "", "", "", ""],
        ["", "", "", "", "", "", "", "", ""],
        ["", "", "", "", "", "", "", "", ""],
        ["", "", "", "", "", "", "", "", ""]
    ]
    
    @State private var cellHeight = (UIScreen.main.bounds.width - 2 - 8)/9

    
    var body: some View {
            
        VStack {
        VStack {
            
            // Start of 3 rows
            
            //Horizontal black line
            Rectangle()
                .fill(Color.black)
                .frame(width: UIScreen.main.bounds.width, height: 4)
            
            VStack {
                
                // 1 row
                SudokuRow(sudokuRow: $sudokuCells[0])

                // 1 row
                SudokuRow(sudokuRow: $sudokuCells[1])


                // 1 row
                SudokuRow(sudokuRow: $sudokuCells[2])
                
                
            
            }
            
            
            // End of 3 rows
            
            //-----------------------------------------------
            
            //Horizontal black line
            Rectangle()
                .fill(Color.black)
                .frame(width: UIScreen.main.bounds.width, height: 4)
            
            VStack {
                
                // 1 row
               SudokuRow(sudokuRow: $sudokuCells[3])

                // 1 row
                SudokuRow(sudokuRow: $sudokuCells[4])


                // 1 row
                SudokuRow(sudokuRow: $sudokuCells[5])
                
            }
            
            // End of first 3 row
            
            
            //--------------------------------------------------------
            
            // Start of 3 rows
            
            //Horizontal black line
            Rectangle()
                .fill(Color.black)
                .frame(width: UIScreen.main.bounds.width, height: 4)
        
            VStack {
                // 1 row
                SudokuRow(sudokuRow: $sudokuCells[6])
                
                // 1 row
                SudokuRow(sudokuRow: $sudokuCells[7])

                // 1 row
                SudokuRow(sudokuRow: $sudokuCells[8])
                
            }
            
            // End of first 3 row
            
            //Horizontal black line
            Rectangle()
                .fill(Color.black)
                .frame(width: UIScreen.main.bounds.width, height: 4)
            
        }.background(Color.yellow) //end of parent vertical stack
            
            HStack {
                Button(action: {
                    
                    
                }, label: {
                    Text("Solve")
                        .foregroundColor(.white)
                        .padding(/*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    
                })
                .background(Color.blue)
                .cornerRadius(6.0)
                
                Button(action: {
                    
                }, label: {
                    Text("Clear")
                        .foregroundColor(.white)
                        .padding(/*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    
                })
                .background(Color.blue)
                .cornerRadius(6.0)
                
            }

    }
        
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
