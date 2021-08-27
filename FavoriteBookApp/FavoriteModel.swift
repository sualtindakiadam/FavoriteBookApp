//
//  FavoriteModel.swift
//  FavoriteBookApp
//
//  Created by Semih Kalaycı on 27.08.2021.
//

import Foundation
import SwiftUI

struct FavoriteModel : Identifiable {
    
    var id = UUID()
    var title :String
    var elements : [FavoriteElements]
}

struct FavoriteElements : Identifiable {
    var id = UUID()
    var name : String
    var imageName : String
    var description  : String
}

//bands
let metallica = FavoriteElements(name: "Metalkica", imageName: "metallica", description: "Mettalica music")
let megadeth = FavoriteElements(name: "megadeth", imageName: "megadeth", description: "megadeth music")
let ironmaiden = FavoriteElements(name: "ironmaiden", imageName: "ironmaiden", description: "ironmaiden music")


let favoriteBands = FavoriteModel(title: "Favorite Bands", elements: [metallica,megadeth,ironmaiden])


//animals

let octopus = FavoriteElements(name: "octopus", imageName: "octopus", description: "octopus animal")
let shark = FavoriteElements(name: "shark", imageName: "shark", description: "shark animal")
let snake   = FavoriteElements(name: "snake", imageName: "snake", description: "snake animal")


let favoriteAnimals = FavoriteModel(title: "Favorite Animals", elements: [octopus,shark,snake])


let myFavorites = [favoriteBands,favoriteAnimals]

