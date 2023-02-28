//
//  W5D2.swift
//  AirCnC
//
//  Created by 하일환 on 2023/02/14.
//


import SwiftUI

struct W5D2: View {
    var body: some View {
        Section{
            List(hospitalList) { list in
                Text("\(list.name)")
            }
        }
    }
}

struct W5D2_Previews: PreviewProvider {
    static var previews: some View {
        W5D2()
    }
}

let hospitalList = [
    Hospital(name: "경상대학교병원", location: "경상남도 진주시", distance: 4),
    Hospital(name: "고려병원", location: "경상남도 진주시", distance: 3),
    Hospital(name: "선운한의원", location: "경상남도 진주시", distance: 1)
]

struct Hospital: Identifiable {
    var id = UUID()
    var name: String
    var location: String
    var distance: Int
}
