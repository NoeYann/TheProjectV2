 //
//  ContentView.swift
//  TheProjectV2
//
//  Created by Noe-Yann Chaffard--Kowalewski on 29/05/2026.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var j = Jeu()
    // Creee un array pour mettre à jour les couleurs de chaque case
    @State var tab: [[Case]] = (0...5).map { y in
        (0...6).map { x in
            Case(pos:(x, y), valeur: 0)
        }
    }
    @State var currentGame: (Bool, Int, Int, Int) = (false, 0,0,1)
    var body: some View {
        ZStack {
            VStack{
                // Boutons qui permettent de choisir le mode de jeu
                HStack(spacing:100){
                    Button("Jouer contre BOT"){
                        print("bot")
                    }
                    .background(Color.black)
                    Button("Jouer à plusieurs"){
                        print("JCJ")
                    }
                    .background(Color.black)
                }
                HStack(spacing:16) {
                    //Affichage des cases
                    ForEach(0...6, id:\.self){ i in
                        VStack(spacing:14) {
                            ForEach(0...5, id:\.self) { k in
                                
                                Button("    "){
                                    currentGame = j.playGrid(i)
                                    if currentGame.0 == false{
                                        if currentGame.3 != 0{
                                            tab[currentGame.2][currentGame.1].update(valeur: currentGame.3)
                                        }
                                    }
                                    else if currentGame.1 == -1 {
                                        Text("EGALITE")
                                            .font(.largeTitle)
                                            .background(Color.black)
                                    }
                                    else if currentGame.1 == 1 {
                                        Text("JOUEUR 1 GAGNE")
                                            .font(.largeTitle)
                                            .background(Color.black)
                                    }
                                    else if currentGame.1 == 2 {
                                        Text("JOUEUR 2 GAGNE")
                                            .font(.largeTitle)
                                            .background(Color.black)
                                    }
                                }
                                .frame(width:40, height:40)
                                .background(tab[k][i].couleur)
                                .clipShape(Circle())
                            }
                        }
                    }
                }
                .padding()
            }
        }
        .background(Color(red:0, green:0, blue:1 ))
    }
}

#Preview {
    ContentView()
}


