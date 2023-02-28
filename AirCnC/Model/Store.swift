//
//  Store.swift
//  AirCnC
//
//  Created by 하일환 on 2023/02/28.
//

import Foundation

final class Store {  // final은 이 클래스를 다른 곳에서 상속받지 못하도록 한다.
    
    var products: [Product] // 프로덕트라는 클래스를 가진 배열을 가질 것이므로
    
    init() {
        products = [  // 실제 상용 서비스를 만든다면 이런 미리 만들어진 배열이 아닌 유저가 직접 append 할 수 있도록 만들어야 한다.
//            Product(productName: "제품이름", user: User.franky, Price: 12345, productImage: ["이미지1", "이미지2"], size: Size(w:10)
            Product(productName: "ÄLEBY", thumbnail: "aleby",
                    productImage: ["aleby_1", "aleby_2", "aleby_3", "aleby_4", "aleby_5", "aleby_6", "aleby_7"],
                    price: 34000, size: Size(w: 86, d: 88, h: 101),
                    user: User.ggamdi),
            Product(productName: "BROMMÖ", thumbnail: "brommo",
                    productImage: ["brommo_1", "brommo_2", "brommo_3", "brommo_4", "brommo_5"],
                    price: 8000, size: Size(w: 48, d: 92, h: 89),
                    user: User.franky),
            Product(productName: "EKEDALEN", thumbnail: "ekedalen",
                    productImage: ["ekedalen_1", "ekedalen_2", "ekedalen_3", "ekedalen_4", "ekedalen_5"],
                    price: 6000, size: Size(w: 43, d: 51, h: 95),
                    user: User.goyangci),
            Product(productName: "HATTEFJÄLL", thumbnail: "hattefjall",
                    productImage: ["hattefjall_1", "hattefjall_2", "hattefjall_3", "hattefjall_4", "hattefjall_5"],
                    price: 23000, size: Size(w: 68, d: 68, h: 110),
                    user: User.franky),
            Product(productName: "MARKUS", thumbnail: "markus",
                    productImage: ["markus_1", "markus_2", "markus_3", "markus_4", "markus_5", "markus_6", "markus_7"],
                    price: 20000, size: Size(w: 62, d: 60, h: 140),
                    user: User.popo),
            Product(productName: "MILLBERGET", thumbnail: "millberget",
                    productImage: ["millberget_1", "millberget_2", "millberget_3", "millberget_4", "millberget_5", "millberget_6"],
                    price: 8000, size: Size(w: 52, d: 65, h: 123),
                    user: User.goyangci),
            Product(productName: "NORDMYRA", thumbnail: "nordmyra",
                    productImage: ["nordmyra_1", "nordmyra_2", "nordmyra_3"],
                    price: 5000, size: Size(w: 45, d: 48, h: 80),
                    user: User.popo),
            Product(productName: "NORRÅKER", thumbnail: "norraker",
                    productImage: ["norraker_1", "norraker_2", "norraker_3", "norraker_4", "norraker_5", "norraker_6"],
                    price: 8000, size: Size(w: 41, d: 50, h: 81),
                    user: User.ggamdi),
            Product(productName: "TUNHOLMEN", thumbnail: "tunholmen",
                    productImage: ["tunholmen_1", "tunholmen_2", "tunholmen_3", "tunholmen_4", "tunholmen_5"],
                    price: 8000, size: Size(w: 55, d: 55, h: 78),
                    user: User.ggamdi),
            Product(productName: "YPPERLIG", thumbnail: "ypperlig",
                    productImage: ["ypperlig_1", "ypperlig_2", "ypperlig_3", "ypperlig_4", "ypperlig_5", "ypperlig_6", "ypperlig_7"],
                    price: 8000, size: Size(w: 55, d: 51, h: 83),
                    user: User.popo)
        ]
    }
}
