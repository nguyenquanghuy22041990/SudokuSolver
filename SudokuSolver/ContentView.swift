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
    
    @State var textColors: [[Color]] = [
        [Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black],
        [Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black],
        [Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black],
        [Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black],
        [Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black],
        [Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black],
        [Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black],
        [Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black],
        [Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black, Color.black]
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
                SudokuRow(sudokuRow: $sudokuCells[0], textColors: $textColors[0])

                // 1 row
                SudokuRow(sudokuRow: $sudokuCells[1], textColors: $textColors[1])


                // 1 row
                SudokuRow(sudokuRow: $sudokuCells[2], textColors: $textColors[2])
                
                
            
            }
            
            
            // End of 3 rows
            
            //-----------------------------------------------
            
            //Horizontal black line
            Rectangle()
                .fill(Color.black)
                .frame(width: UIScreen.main.bounds.width, height: 4)
            
            VStack {
                
                // 1 row
               SudokuRow(sudokuRow: $sudokuCells[3], textColors: $textColors[3])

                // 1 row
                SudokuRow(sudokuRow: $sudokuCells[4], textColors: $textColors[4])


                // 1 row
                SudokuRow(sudokuRow: $sudokuCells[5], textColors: $textColors[5])
                
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
                SudokuRow(sudokuRow: $sudokuCells[6], textColors: $textColors[6])
                
                // 1 row
                SudokuRow(sudokuRow: $sudokuCells[7], textColors: $textColors[7])

                // 1 row
                SudokuRow(sudokuRow: $sudokuCells[8], textColors: $textColors[8])
                
            }
            
            // End of first 3 row
            
            //Horizontal black line
            Rectangle()
                .fill(Color.black)
                .frame(width: UIScreen.main.bounds.width, height: 4)
            
        }.background(Color.yellow) //end of parent vertical stack
            
            HStack {
                Button(action: {
                    
                    DispatchQueue.global(qos: .background).async {
                        print("This is run on the background queue")
                        
                        SudokuSolverAlgorithm.convertTable(stringTable: sudokuCells)
                        SudokuSolverAlgorithm.solve()
                        

                        DispatchQueue.main.async {
                            print("This is run on the main queue, after the previous code in outer block")
                            
                            for i in 0 ..< 9 {
                                for j in 0 ..< 9 {
                                    
                                    if (sudokuCells[i][j] == "") {
                                        textColors[i][j] = Color.red
                                    } else {
                                        textColors[i][j] = Color.black
                                    }
                                    
                                    sudokuCells[i][j] = SudokuSolverAlgorithm.getStringValueAtIndex(row: i, col: j)
                                }
                            }
                        }
                    }
                    
                   
                    
                    
                }, label: {
                    Text("Solve")
                        .foregroundColor(.white)
                        .padding(/*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    
                })
                .background(Color.blue)
                .cornerRadius(6.0)
                
                Button(action: {
                    for i in 0 ..< 9 {
                        for j in 0 ..< 9 {
                            sudokuCells[i][j] = ""
                            textColors[i][j] = Color.black
                        }
                    }
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
