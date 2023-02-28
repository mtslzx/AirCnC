//
//  User.swift
//  AirCnC
//
//  Created by 하일환 on 2023/02/28.
//

import Foundation

class User {  // 사용자 클래스 생성
    var name : String  // 유저 닉네임 Property
    var image : String? // 사용자가 이미지를 올리지 않을 수 있으니 옵셔널 타입
    
    init(name: String, image: String? = nil) {  // 클래스 생성자. python의 __init__과 같은듯하다.
        self.name = name
        self.image = image
    }
    
    // 미리 생성한 유저의 정보를 적어놓을 수 있음?
    static let ggamdi = User(name: "깜디", image: "ggamdi")
    static let franky = User(name: "프랭키", image: "franky")
    static let goyangci = User(name: "고양씨", image: "goyangci")
    static let popo = User(name: "뽀뽀", image: "popo")
    // 이렇게 하면 외부에서 생성자로 생성을 했을 때 기본적으로 가지고 있는 유저가 된다고 한다.
}
