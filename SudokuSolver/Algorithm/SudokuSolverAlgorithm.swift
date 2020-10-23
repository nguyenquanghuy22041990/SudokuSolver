//
//  SudokuSolverAlgorithm.swift
//  SudokuSolver
//
//  Created by Huy Quang Nguyen on 10/21/20.
//

import UIKit

class SudokuSolverAlgorithm: NSObject {

    static var table: [[Int]] = [
        [ 0, 1, 0, 0, 3, 8, 0, 6, 0],
        [ 0, 0, 0, 0, 0, 1, 0, 4, 5],
        [ 5, 9, 0, 0, 0, 0, 0, 0, 0],
        
        [ 0, 0, 0, 3, 9, 0, 1, 0, 0],
        [ 6, 5, 0, 0, 0, 0, 0, 0, 0],
        [ 0, 0, 0, 1, 6, 0, 0, 2, 0],
        
        [ 0, 0, 0, 6, 1, 4, 0, 0, 0],
        [ 0, 0, 7, 0, 0, 0, 0, 0, 0],
        [ 0, 0, 0, 0, 0, 0, 8, 0, 9] ]
    
    static var stepCount:Int = 0
    
    static func convertTable(stringTable:[[CellObject]]!) {
        
        for i in 0 ..< 9 {
            for j in 0 ..< 9 {
                if (stringTable[i][j].entry == "") {
                    table[i][j] = 0
                } else {
                    table[i][j] = Int(stringTable[i][j].entry)!
                }
            }
        }
    }
    
    static func getStringValueAtIndex(row: Int, col: Int) -> String {
        return String(table[row][col])
    }
    
    static func checkValidSudoku(table:[[Int]])-> Bool
    {
        for row in 0 ..< 9
        {
            for col in 0 ..< 9
            {
        
                let currentValue = table[row][col]
                
                if currentValue == 0
                {
                    continue
                }
                
                for i in 0 ..< 9
                {
                    
                    
                    if ( (table[row][i] == currentValue && i != col) ||
                         (table[i][col] == currentValue && i != row) ||
                    ( ( table[(row - row%3) + i/3][(col - col%3) + i%3] == currentValue)  && (( (row - row%3) + i/3 != row) || ( (col - col%3) + i%3 != col)) ) )
                    {

                        return false

                    }
                    
                }

            }
        }
        
        return true
    }
    
    static func getCandidates(table:[[Int]], row:Int, col:Int)->([Int])
    {
        var candidates:[Int] = []
        
        for c in 1 ..< 10
        {

            var collision = false;
            
            for i in 0 ..< 9
            {
            
                if (table[row][i] == c ||
                table[i][col] == c ||
                table[(row - row%3) + i/3][(col - col%3) + i%3] == c)
                {
                    collision = true
                    break
                }
                
            }
            
            if (!collision)
            {
                 candidates.append(c)
            }
        }
        
        return candidates
    
    }
    
    static func solve()-> Bool
    {
        var solved = false
        
        var row = -1
        var col = -1
        var candidates:[Int] = []
        
        
        for i in 0 ..< 9
        {
            for j in 0 ..< 9
            {
                if table[i][j] == 0
                {
                    let newCandidates:[Int] = getCandidates(table: table, row: i, col: j)
                    
                    if (row < 0 || newCandidates.count < candidates.count)
                    {
                        row = i
                        col = j
                        candidates = newCandidates
                    }
                }
            }
        }
        
        if (row < 0)
        {
            solved = true
        }
        else
        {
    
            for i in 0 ..< candidates.count
            {
                
                table[row][col] = candidates[i]
                stepCount += 1
                
                if (solve() == true)
                {
                    solved = true
                    break
                }
                
                table[row][col] = 0
            }
        }
        
        return solved
    }
    
    static func printTable()
    {
        print("Solved table after steps:", stepCount)

        print(table)
    }
    
    static func solveSudoku(stringTable:[[CellObject]]!) -> Bool{
        convertTable(stringTable: stringTable)
        
        if (!checkValidSudoku(table: table)) {
            return false
        }
        
        return solve()
    }
}
