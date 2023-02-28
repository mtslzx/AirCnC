//
//  ItemRow.swift
//  AirCnC
//
//  Created by 하일환 on 2023/02/21.
//

import SwiftUI

struct ItemRow: View {
    let product: Product
    
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            
            if let thumbnail = product.thumbnail {
                Image("\(thumbnail)").resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 80, height: 80, alignment: .leading)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding(.trailing, 10)
            } else {
                Text("NO IMAGE")
            }
            Text("\(product.productName)").font(.title3).fontWeight(.heavy).fontDesign(.monospaced)
                .frame(alignment: .top)
//            Spacer()
//            Text("\(product.user.name)")
//                .font(.callout)
//                .fontWeight(.medium)
//                .fontDesign(.default)
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(product: productSample)
    }
}

struct Item: Identifiable {
    let id = UUID()
    let name: String
    let user: String
    let price: Int
    let img: String
}

let itemList = [
    Item(name: "ALEBY", user: "깜디", price: 40000, img: "aleby_1"),
    Item(name: "BROMMO", user: "프랭키", price: 40000, img: "brommo_1"),
    Item(name: "EKEDALEN", user: "고양씨", price: 40000, img: "ekedalen_1"),
    Item(name: "HATTEFJÄLL", user: "프랭키", price: 40000, img: "hattefjall_1"),
    Item(name: "MARKUS", user: "뽀뽀", price: 40000, img: "markus_1"),
    Item(name: "MILLBERGET", user: "고양씨", price: 40000, img: "millberget_1"),
    Item(name: "NORDMYRA", user: "뽀뽀", price: 40000, img: "nordmyra_1"),
    Item(name: "NORRAKER", user: "깜디", price: 40000, img: "norraker_1"),
    Item(name: "TUNHOLMEN", user: "깜디", price: 40000, img: "tunholmen_1"),
    Item(name: "YPPERLIG", user: "뽀뽀", price: 40000, img: "ypperlig_1")
]
