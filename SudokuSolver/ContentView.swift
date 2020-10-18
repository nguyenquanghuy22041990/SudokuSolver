//
//  ContentView.swift
//  SudokuSolver
//
//  Created by Huy Quang Nguyen on 10/18/20.
//

import SwiftUI

struct ContentView: View {
    
    @State private var sudokuCells: [[Int]] = [
        [1, 1, 1, 1, 1, 1, 1, 1, 1],
                                               [1, 1, 1, 1, 1, 1, 1, 1, 1],
                                               [1, 1, 1, 1, 1, 1, 1, 1, 1],
                                               [1, 1, 1, 1, 1, 1, 1, 1, 1],
                                               [1, 1, 1, 1, 1, 1, 1, 1, 1],
                                               [1, 1, 1, 1, 1, 1, 1, 1, 1],
                                               [1, 1, 1, 1, 1, 1, 1, 1, 1],
                                               [1, 1, 1, 1, 1, 1, 1, 1, 1],
                                               [1, 1, 1, 1, 1, 1, 1, 1, 1]
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
                SudokuRow()
                
                // 1 row
                SudokuRow()
                
                
                // 1 row
                SudokuRow()
                
            }
            
            
            // End of 3 rows
            
            //-----------------------------------------------
            
            //Horizontal black line
            Rectangle()
                .fill(Color.black)
                .frame(width: UIScreen.main.bounds.width, height: 4)
            
            VStack {
                
                // 1 row
                SudokuRow()
                
                // 1 row
                SudokuRow()
                
                
                // 1 row
                SudokuRow()
                
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
                SudokuRow()
                
                // 1 row
                SudokuRow()
                
                // 1 row
                SudokuRow()
                
            }
            
            // End of first 3 row
            
            //Horizontal black line
            Rectangle()
                .fill(Color.black)
                .frame(width: UIScreen.main.bounds.width, height: 4)
            
        }.background(Color.yellow) //end of parent vertical stack
            
            HStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Solve")
                        .foregroundColor(.white)
                        .padding(/*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    
                })
                .background(Color.blue)
                .cornerRadius(6.0)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
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
