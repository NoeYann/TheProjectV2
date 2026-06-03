//
//  Jeu.swift
//  TheProjectV2
//
//  Created by Noe-Yann Chaffard--Kowalewski on 29/05/2026.
//
import SwiftUI

class Jeu : ObservableObject {
    @Published private(set) var grid: Grille
    private var currentPlayer : Int = 1
    private var isRunning : Bool = true
    
    init(){
        self.grid = Grille()
    }
    
    func swithPlayer(){
        if currentPlayer == 1 {
            currentPlayer = 2
        }
        else {
            currentPlayer = 1
        }
    }
    
    func end (_ x:Int, _ y:Int) -> Bool{
        var boucle : Bool = true
        while boucle {
            var X:Int = x
            var Y:Int = y
            var isAligned: Bool = true
            while isAligned {
                X+=1
                Y+=1
                if (grid.getPiece(X, Y) != currentPlayer || X<0 || X>6 || Y<0 || Y>5 ){
                    isAligned = false
                }
            }
            return false
        }
    }
    func direction (_ x:Int, _ y:Int, _ n:Int) -> (Int, Int){
        if n == 1 {
            return (x+1,y)
        }
        else if n == 2 {
            return (x-1,y)
        }
        else if n == 3 {
            return (x, y+1)
        }
        else if n == 4 {
            return (x, y-1)
        }
        else if n == 5 {
            return (x+1,y+1)
        }
        else if n == 6 {
            return (x-1,y+1)
        }
        else if n == 1 {
            return (x+1,y-1)
        }
        else {
            return (x-1, y-1)
        }
    }
    func play(){
        
    }
}
