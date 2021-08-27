//
//  ContentView.swift
//  FavoriteBookApp
//
//  Created by Semih Kalaycı on 27.08.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView { // navigasyonların çalışması için bunun içinde olmalı
        
        List{
            ForEach(myFavorites){ favorite in
                Section(header: Text(favorite.title)) {
                    ForEach(favorite.elements){ element in
                        NavigationLink(
                            destination: DetailsView(choosenFavoriteElement: element),
                            label: {
                                Text(element.name)
                            })
                        
                        
                    }
                    
                }
                
            }
        }.navigationBarHidden(true)
        }
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
