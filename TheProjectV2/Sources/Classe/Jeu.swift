//
//  Jeu.swift
//  TheProjectV2
//
//  Created by Noe-Yann Chaffard--Kowalewski on 29/05/2026.
//


//import SwiftUI

//class Jeu : ObservableObject {
class Jeu {
    //@Published private(set) var grid: Grille
    var grid : Grille
    private var currentPlayer : Int = 1
    private var isRunning : Bool = true
    
    init(){
        self.grid = Grille()
    }

    init(_ g : Grille) {
        self.grid = g
    }
    
    func swithPlayer(){
        if currentPlayer == 1 {
            currentPlayer = 2
        }
        else {
            currentPlayer = 1
        }
    }
    
    func end (_ x:Int, _ y:Int, _ n:Int) -> Int{ // -1: égalité / 0: partie continue / 1: N1 gagne / 2: N2 gagne
        //test egalite
        var egalite : Bool = true
        for i in 0...6{
            if grid[i][0] == 0{
                egalite = false
            }
        }
        if egalite == true {
            print("DEBUG : EGALITE")
            return -1
        }

        //test colonne
        var aligned : Int = 0
        for i in 0...5{
            if grid [x][i] == n{
                aligned += 1
            }
            else{
                aligned = 0
            }
            if aligned == 4{
                print("DEBUG : COL")
                return n
            }
        }

        //test ligne
        aligned = 0
        for i in 0...6{
            if grid [i][y] == n{
                aligned += 1
            }
            else{
                aligned = 0
            }
            if aligned == 4{
                print("DEBUG : LIGNE")
                return n
            }
        }

        //test diago \
        aligned = 0
        var X : Int = x
        var Y : Int = y
        while X > 0 && Y > 0{
            //print("- ",X,Y)
            X -= 1
            Y -= 1
        }
        while X <= 6 && Y <= 5{
            //print("+ ",X,Y)
            if grid [X][Y] == n{
                aligned += 1
            }
            else{
                aligned = 0
            }
            if aligned == 4{
                print("DEBUG : DIAG \\")
                return n
            }
            X += 1
            Y += 1
        }
        //print("~~~~")
        
        //test diago /
        aligned = 0
        X = x
        Y = y
        while X > 0 && Y < 5{
            //print("- ",X,Y)
            X -= 1
            Y += 1
        }
        while X != 6 && Y != 0{
            //print("+ ",X,Y)
            if grid [X][Y] == n{
                aligned += 1
            }
            else{
                aligned = 0
            }
            if aligned == 4{
                print("DEBUG : DIAG /")
                return n
            }
            X += 1
            Y -= 1
        }

        //sinon le jeu continu
        return 0
    }

    func play(){
        
    }
}
