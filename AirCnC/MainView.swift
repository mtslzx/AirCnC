//
//  MainView.swift
//  AirCnC
//
//  Created by 하일환 on 2023/03/03.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            // 1.
            Explorer()
                .tabItem {
                    Image(systemName: "chair.fill")
                    Text("Home")
                }
            // 2. Favorite
            FavoriteView()
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Favorited")
                }
            // 3. Profile
            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(Store())
    }
}
