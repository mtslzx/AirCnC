//
//  Products.swift
//  AirCnC
//
//  Created by 하일환 on 2023/02/28.
//

import Foundation

struct Product: Identifiable {  // Identifiable을 통해 Store에서 리스트로 주구장창 생길 Product를 구분시켜 주어야 하나보다.
    var id = UUID()
    var productName : String
    var thumbnail : String?
    var productImage : [String]?
    var price : Int
    var size : Size?
    var user : User
    
    var isFavorite: Bool = false
    
}

extension Product: Equatable {  // Extension?
    static func == (lhs: Product, rhs: Product) -> Bool {  // left handed side??
        return lhs.id == rhs.id
    }
}

typealias Size = (w : Int, d : Int, h : Int)  // ?


let productSample = Product(productName: "ÄLEBY", thumbnail: "aleby",
                            productImage: ["aleby_1", "aleby_2", "aleby_3", "aleby_4", "aleby_5", "aleby_6", "aleby_7"],
                            price: 34000, size: Size(w: 86, d: 88, h: 101),
                            user: User.ggamdi)  // UI 프리뷰를 위해 sample 작성. (좋은 방법은 아님.)
