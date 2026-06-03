//
//  TheProjectV2App.swift
//  TheProjectV2
//
//  Created by Noe-Yann Chaffard--Kowalewski on 29/05/2026.
//

import SwiftUI

@main
struct TheProjectV2App: App {
    @StateObject var j = Jeu()
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
    init(){
        let g = Grille()
        g.printGrille()
        print(" --- ")
        g.modifierGrille( 0,  5,  1)
        g.modifierGrille( 0,  4,  1)
        g.modifierGrille( 0,  3,  1)
        g.printGrille()
        print(" --- ")
        print(g.placer( 0,  2))
        g.placer( 2,  2)
        g.printGrille()
        print(" --- ")
        print(g.getPiece(0,5))
    }
}
