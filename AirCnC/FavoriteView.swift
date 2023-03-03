//
//  FavoriteView.swift
//  AirCnC
//
//  Created by 하일환 on 2023/03/03.
//

import SwiftUI

struct FavoriteView: View {
    
    @EnvironmentObject var store: Store
    
    var body: some View {
        NavigationView {
            List(store.FavoritedProducts) { product in
                NavigationLink(destination: ContentView(product: product)) {
                    ItemRow(product: product)
                }
            }
            .navigationTitle("Favorited")
        }
    }
}

struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteView()
            .environmentObject(Store())
    }
}
