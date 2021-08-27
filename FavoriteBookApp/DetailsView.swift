//
//  DetailsView.swift
//  FavoriteBookApp
//
//  Created by Semih Kalaycı on 27.08.2021.
//

import SwiftUI

struct DetailsView: View {
    
    var choosenFavoriteElement : FavoriteElements
    
    var body: some View {
        
        VStack{
            Image(choosenFavoriteElement.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(choosenFavoriteElement.name)
                .font(.largeTitle)
                .padding()
            Text(choosenFavoriteElement.description)
        }
        
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(choosenFavoriteElement: octopus)
    }
}
