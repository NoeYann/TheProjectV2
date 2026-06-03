 //
//  ContentView.swift
//  TheProjectV2
//
//  Created by Noe-Yann Chaffard--Kowalewski on 29/05/2026.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var j = Jeu()
    var body: some View {
        ZStack {
            HStack {
                ForEach(0...6, id:\.self){ i in
                    VStack {
                        ForEach(0...5, id:\.self) { k in
                            Button("\(j.grid.grille[i][k])"){
                                print("test")
                            }
                            .frame(width:40, height:40)
                            .background(Color.yellow)
                        }
                    }
                }
            }
            .padding()
            Image("grille")
        }
    }
}

#Preview {
    ContentView()
}


