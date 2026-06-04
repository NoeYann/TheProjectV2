 //
//  ContentView.swift
//  TheProjectV2
//
//  Created by Noe-Yann Chaffard--Kowalewski on 29/05/2026.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var j = Jeu()
    @State var tab: [[Case]] = (0...5).map { y in
        (0...6).map { x in
            Case(pos:(x, y), valeur: 0)
        }
    }
    var body: some View {
        ZStack {
            VStack{
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
                    ForEach(0...6, id:\.self){ i in
                        VStack(spacing:14) {
                            ForEach(0...5, id:\.self) { k in
                                
                                Button(" "){
                                    print("You pressed column \(i) and line \(k)")
                                    j.grid.grille[i][k] += 1
                                    tab[k][i].update(valeur:j.grid.grille[i][k])
                                    print(j.grid.grille[i][k])
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


