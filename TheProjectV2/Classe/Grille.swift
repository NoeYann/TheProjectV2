//
//  grille.swift
//  TheProjectV2
//
//  Created by Noe-Yann Chaffard--Kowalewski on 29/05/2026.
//

class Grille{
    var grille:[[Int]]
    
    init () {
        grille = []
        for _ in 0...6 {        //largeur
            var colonne : [Int] = []
            for _ in 0...5 {    //hauteur
                colonne.append(0)
            }
            self.grille.append(colonne)
        }
    }
    
    func printGrille() {
        for i in 0...5 {
            for y in 0...6 {
                print(grille[y][i], terminator: " ")
            }
            print()
        }
    }
    
    func getGrille() -> [[Int]]{
        return grille
    }
    
    func getPiece(_ x:Int, _ y:Int)->Int{
        return grille[x][y]
    }
    
    func modifierGrille(_ x:Int, _ y:Int, _ player:Int) {
        grille[x][y] = player
    }
    
    func placer(_ x:Int, _ player:Int) -> Bool{
        var i = 5
        while i>=0 {
            if grille[x][i]==0 {
                modifierGrille(x, i, player)
                return true
            }
            i-=1
        }
        return false
    }
}

