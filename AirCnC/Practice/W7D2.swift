//
//  W7D2.swift
//  AirCnC
//
//  Created by 하일환 on 2023/02/28.
//

import SwiftUI

struct W7D2: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: Text("목적지")) {
                Text("링크")
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) { Button("item") {
                    print("HELLO")
                }
                }
            }
            .navigationBarTitle("title")
        }
    }
}

struct W7D2_Previews: PreviewProvider {
    static var previews: some View {
        W7D2()
    }
}

// ? 왜안되냐
