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
    
    func end (_ x:Int, _ y:Int, _ n:Int) -> Int{ //-1: égalité / 0: partie continue / 1: N1 gagne / 2: N2 gagne
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
            X -= 1
            Y -= 1
        }
        while X <= 6 && Y <= 5{
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
        
        //test diago /
        aligned = 0
        X = x
        Y = y
        while X > 0 && Y < 5{
            X -= 1
            Y += 1
        }
        while X != 6 && Y != 0{
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

    func tour(_ player : Int) -> Int{
        var valeurs : [String] = ["1","2","3","4","5","6","7"]
        grid.printGrille()
        print("Joueur \(player) quelle colonne joues tu ?")
        var input = readLine() ?? ""
        var coupOk : Bool = false
        while !coupOk {
            if !valeurs.contains(input){
                print("Entrez un chiffre entre 1 et 7")
                input = readLine() ?? ""
            }
            else if (!grid.canPlacer(Int(input)!-1)) {
                print("Vous ne pouvez pas placer dans cette colonne (elle est pleine)")
                input = readLine() ?? ""
            }
            else{
                return Int(input)! - 1
            }
        }
    }

    func playTerm(){
        var run : Bool = true
        var placement : (Int, Int)
        var continuer : Int
        while run == true{
            placement = grid.placer(tour(1),1)
            continuer = end(placement.0,placement.1,1)
            if continuer == -1{
                print("Egalité")
                run = false
            }
            else if continuer == 1{
                print("GG player 1")
                break
            }
            placement = grid.placer(tour(2),2)
            continuer = end(placement.0,placement.1,2)
            if continuer == -1{
                print("Egalité")
                run = false
            }
            else if continuer == 2{
                print("GG player 2")
                break
            }
        }
    }

}

