//
//  ContentView.swift
//  AirCnC
//
//  Created by 하일환 on 2023/02/03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            productImage
            Text("HATTEFJÄLL").font(.largeTitle).fontWeight(.heavy).fontDesign(.monospaced).tracking(/*@START_MENU_TOKEN@*/2.0/*@END_MENU_TOKEN@*/) // 가구 이름
            userInfo
            productDescription
        }
        .padding()
    }
    var productImage: some View {
        Image("image")
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
    var productDescription: some View {
        VStack(alignment: .leading) {
            Price
            Height
            Width
            Depth
        }
    }
    var userInfo: some View {
        HStack(spacing: 5) {
            Image("franky_180").resizable().clipShape(Circle()).frame(width: 40, height: 40)
            Text("프랭키").font(.title3).fontWeight(.bold)
        }
    }
    var Price: some View {
        HStack() {
            Text("가격").fontWeight(.bold).padding(.trailing, 1.0)
            Text("10,000원")
        }
    }
    var Height: some View {
        HStack {
            Text("폭").fontWeight(.bold).padding(.trailing)
            Text("50cm")
        }
    }
    var Width: some View {
        HStack {
            Text("너비").fontWeight(.bold).padding(.trailing, 1.0)
            Text("50cm")
        }
        
    }
    var Depth: some View {
        HStack {
            Text("높이").fontWeight(.bold).padding(.trailing, 1.0)
            Text("50cm")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
