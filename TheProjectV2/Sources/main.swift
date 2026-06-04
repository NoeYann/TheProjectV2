// The Swift Programming Language
// https://docs.swift.org/swift-book



print(" test colonne")//
let g1 = Grille()
g1.modifierGrille( 0,  5,  1)
g1.modifierGrille( 0,  4,  1)
g1.modifierGrille( 0,  3,  1)
g1.modifierGrille( 0,  2,  1)
g1.printGrille()
print(" --- ")
let j1 = Jeu(g1)
print(j1.end(0,3,1))
print("")

print(" test ligne")//
let g2 = Grille()
g2.modifierGrille(0, 5, 1)
g2.modifierGrille(1, 5, 1)
g2.modifierGrille(2, 5, 1)
g2.modifierGrille(3, 5, 1)
g2.printGrille()
print(" --- ")
let j2 = Jeu(g2)
print(j2.end(3, 5, 1))
print("")


print(" test /")//
let g3 = Grille()
g3.modifierGrille(0, 5, 1)
g3.modifierGrille(1, 4, 1)
g3.modifierGrille(2, 3, 1)
g3.modifierGrille(3, 2, 1)
g3.printGrille()
print(" --- ")
let j3 = Jeu(g3)
print(j3.end(3, 2, 1))
print("")

/*
print(" test \\")//
let g4 = Grille()
g4.modifierGrille(0, 2, 1)
g4.modifierGrille(1, 3, 1)
g4.modifierGrille(2, 4, 1)
g4.modifierGrille(3, 5, 1)
g4.printGrille()
print(" --- ")
let j4 = Jeu(g4)
print(j4.end(3, 5, 1))
print("")

print(" test jetons mélangés")//
let g6 = Grille()
g6.modifierGrille(0, 5, 1)
g6.modifierGrille(1, 5, 2)
g6.modifierGrille(2, 5, 1)
g6.modifierGrille(3, 5, 1)
g6.printGrille()
print(" --- ")
let j6 = Jeu(g6)
print(j6.end(3, 5, 1))
print("")

print(" test 3 jetons")//
let g5 = Grille()
g5.modifierGrille(0, 5, 1)
g5.modifierGrille(1, 5, 1)
g5.modifierGrille(2, 5, 1)
g5.printGrille()
print(" --- ")
let j5 = Jeu(g5)
print(j5.end(2, 5, 1))
print("")
*/

print("test alignement en milieu de grille")//
let g7 = Grille()
g7.modifierGrille(2, 3, 2)
g7.modifierGrille(3, 3, 2)
g7.modifierGrille(4, 3, 2)
g7.modifierGrille(5, 3, 2)
g7.printGrille()
print(" --- ")
let j7 = Jeu(g7)
print(j7.end(5, 3, 2))
print("")

print(" 6 jetons alignés")//
let g8 = Grille()
g8.modifierGrille(0, 5, 1)
g8.modifierGrille(0, 4, 1)
g8.modifierGrille(0, 3, 1)
g8.modifierGrille(0, 2, 1)
g8.modifierGrille(0, 1, 1)
g8.modifierGrille(0, 0, 1)
g8.printGrille()
print(" --- ")
let j8 = Jeu(g8)
print(j8.end(0, 0, 1))
print("")


/*
print(" égalité")//
let g9 = Grille()
let pattern: [[Int]] = [
    [1,2,1,2,1,2],
    [1,2,1,2,1,2],
    [2,1,2,1,2,1],
    [2,1,2,1,2,1],
    [1,2,1,2,1,2],
    [1,2,1,2,1,2]
]
for x in 0...6 {
    for y in 0...5 {
        g9.modifierGrille(x, y, pattern[x][y])
    }
}
g9.printGrille()
print(" --- ")
let j9 = Jeu(g9)
print(j9.end(6, 5, 1))
*/