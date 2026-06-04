//
//  Case.swift
//  TheProjectV2
//
//  Created by Lucas Charbonnel on 04/06/2026.
//
import SwiftUI

struct Case{
    var pos: (Int, Int)
    let colorsPicker:[Color] = [Color.white, Color.yellow, Color.red]
    var couleur: Color = Color.white
    var valeur: Int
    
    init(pos: (Int, Int), valeur: Int) {
        self.pos = pos
        self.valeur = valeur
    }
    
    mutating func update(valeur: Int){
        self.valeur = valeur
        if 0 <= self.valeur && self.valeur <= 2{
            self.couleur = colorsPicker[valeur]
        }
    }
}
