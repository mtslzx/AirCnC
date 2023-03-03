//
//  Explore.swift
//  AirCnC
//
//  Created by 하일환 on 2023/02/28.
//

import SwiftUI

struct Explorer: View {
//    let store = Store()  // 싱글 턴?? 이라고 한다.
    
    @EnvironmentObject var store: Store
    
    var body: some View {
        NavigationView {
            List(store.products) { item in
                ItemRow(product: item)
                NavigationLink("￦" + String(item.price) + " ∙ " + item.user.name, destination: ContentView(product: item))
                    .listStyle(.insetGrouped)
                    .navigationBarTitle("AirCnC")
            }
        }
    }
}


struct Explore_Previews: PreviewProvider {
    static var previews: some View {
        Explorer()
            .environmentObject(Store())
    }
}
