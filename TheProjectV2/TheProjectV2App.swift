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
        let j = Jeu()
        j.playTerm()
    }
}
