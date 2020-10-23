//
//  ContentView.swift
//  SudokuSolver
//
//  Created by Huy Quang Nguyen on 10/18/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var  cellObjects: [[CellObject]] = [[CellObject(cellValue: "", inputTextColor: Color.black),
                                                CellObject(cellValue: "", inputTextColor: Color.black),
                                                CellObject(cellValue: "", inputTextColor: Color.black),CellObject(cellValue: "", inputTextColor: Color.black),
                                                CellObject(cellValue: "", inputTextColor: Color.black),
                                                CellObject(cellValue: "", inputTextColor: Color.black),CellObject(cellValue: "", inputTextColor: Color.black),
                                                CellObject(cellValue: "", inputTextColor: Color.black),
                                                CellObject(cellValue: "", inputTextColor: Color.black)],
                                               [CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black),CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black),CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black)],
                                               [CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black),CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black),CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black)],
                                               [CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black),CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black),CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black)],
                                               [CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black),CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black),CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black)],[CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                                                                                        CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                                                                                        CellObject(cellValue: "", inputTextColor: Color.black),CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                                                                                        CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                                                                                        CellObject(cellValue: "", inputTextColor: Color.black),CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                                                                                        CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                                                                                        CellObject(cellValue: "", inputTextColor: Color.black)],
                                               [CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black),CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black),CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black)],
                                               [CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black),CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black),CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black)],
                                               [CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black),CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black),CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black)],
                                               [CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black),CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black),CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black),
                                                                                              CellObject(cellValue: "", inputTextColor: Color.black)]
    ]
    

    
    @State private var iShowingInvalidSudokuMessage = false


    
    var body: some View {
            
        VStack {
            VStack (spacing: 0.0){

            // Start of 3 rows

            //Horizontal black line
            Rectangle()
                .fill(Color.black)
                .frame(width: UIScreen.main.bounds.width, height: 4)

            VStack (spacing: 0.0){

                // 1 row
                SudokuRow(cellObjects: $cellObjects[0])

                // 1 row
                SudokuRow(cellObjects: $cellObjects[1])

                // 1 row
                SudokuRow(cellObjects: $cellObjects[2])
            }
      


            // End of 3 rows

            //-----------------------------------------------

            //Horizontal black line
            Rectangle()
                .fill(Color.black)
                .frame(width: UIScreen.main.bounds.width, height: 4)

            VStack (spacing: 0.0){

                // 1 row
                SudokuRow(cellObjects: $cellObjects[3])

                // 1 row
                SudokuRow(cellObjects: $cellObjects[4])

                // 1 row
                SudokuRow(cellObjects: $cellObjects[5])

            }

            // End of first 3 row


            //--------------------------------------------------------

            // Start of 3 rows

            //Horizontal black line
            Rectangle()
                .fill(Color.black)
                .frame(width: UIScreen.main.bounds.width, height: 4)
        
            VStack (spacing: 0.0){

                // 1 row
                SudokuRow(cellObjects: $cellObjects[6])

                // 1 row
                SudokuRow(cellObjects: $cellObjects[7])

                // 1 row
                SudokuRow(cellObjects: $cellObjects[8])

            }

            // End of first 3 row

            //Horizontal black line
            Rectangle()
                .fill(Color.black)
                .frame(width: UIScreen.main.bounds.width, height: 4)
            
        }.background(Color.clear) //end of parent vertical stack
            
            HStack {
                Button(action: {

                    DispatchQueue.global(qos: .background).async {
                        print("This is run on the background queue")

                        if !(SudokuSolverAlgorithm.solveSudoku(stringTable: cellObjects)) {
                            self.iShowingInvalidSudokuMessage = true
                        } else {
                            DispatchQueue.main.async {
                                print("This is run on the main queue, after the previous code in outer block")

                                for i in 0 ..< 9 {
                                    for j in 0 ..< 9 {

                                        if (cellObjects[i][j].entry == "") {
                                            cellObjects[i][j].textColor = Color.red
                                        } else {
                                            cellObjects[i][j].textColor = Color.black
                                        }

                                        cellObjects[i][j].entry = SudokuSolverAlgorithm.getStringValueAtIndex(row: i, col: j)
                                    }
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
                            cellObjects[i][j].entry = ""
                            cellObjects[i][j].textColor = Color.black
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



        }.alert(isPresented: $iShowingInvalidSudokuMessage) {
            Alert(title: Text("Oops"), message: Text("Invalid sudoku. Please update it!!!"), dismissButton: .default(Text("OK")))
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
