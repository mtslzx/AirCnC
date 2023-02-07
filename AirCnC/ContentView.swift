//
//  ContentView.swift
//  AirCnC
//
//  Created by 하일환 on 2023/02/03.
//

import SwiftUI

struct ContentView: View {
    
    @State private var date: Date = Date()
    @State private var isFavorite: Bool = false
    @State private var PicIdx: Int = 5  // 총 이미지 개수
    @State private var currentPicIdx: Int = 1  // 현재 보고있는 이미지 번호
    @State private var isLeftExist: Bool = false
    @State private var isRightExist: Bool = true
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            productImage
            productName
            userInfo
            productDescription
            reserveDate
        }.padding()
    }
    
    var productImage: some View {
        ZStack{
            HStack {
                LeftButton(PicIdx: $PicIdx, currentPicIdx: $currentPicIdx)
                Image("image")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
//                    .frame(width: UIScreen.main.bounds.width*3/4, height: UIScreen.main.bounds.height/3)
                RightButton(PicIdx: $PicIdx, currentPicIdx: $currentPicIdx)
            }
            Text("\(currentPicIdx)/\(PicIdx)")
        }
    }
    
    var productName: some View {
        HStack {
            Text("HATTEFJÄLL").font(.largeTitle).fontWeight(.heavy).fontDesign(.monospaced).tracking(/*@START_MENU_TOKEN@*/2.0/*@END_MENU_TOKEN@*/) // 가구 이름
            Spacer()
            FavoriteButton(isFavorite: $isFavorite)
        }
    }
    
    var userInfo: some View {
        HStack(spacing: 5) {
            Image("franky_180").resizable().clipShape(Circle()).frame(width: 40, height: 40)
            Text("프랭키").font(.title3).fontWeight(.bold)
        }
    }
    
    var productDescription: some View {
        VStack(alignment: .leading) {
            Price
            Height
            Width
            Depth
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
    
    var reserveDate: some View {
        VStack {
            DatePicker("\(date, formatter:  dateFormatter)", selection: $date, in: Date()..., displayedComponents: [.date])
                .datePickerStyle(.compact)
        }
    }
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }
}

// FavoriteButton Struct
struct FavoriteButton: View {
    @Binding var isFavorite: Bool
    
    var body: some View {
        Button {
            isFavorite.toggle()
        } label: {
            Image(systemName: self.isFavorite ? "heart.fill" : "heart")
                .font(.custom("heartIcon", size: 28))
                .foregroundColor(Color.pink)
        }
    }
}

struct LeftButton: View {
//    @Binding var isLeftExist: Bool
    @Binding var PicIdx: Int
    @Binding var currentPicIdx: Int
    var body: some View {
        Button() {
            currentPicIdx -= 1
        } label: {
            Image(systemName: currentPicIdx > 1 ? "arrow.left.circle.fill" : "arrow.left.circle").foregroundColor(.primary)
        }
    }
}

struct RightButton: View {
//    @Binding var isRightExist: Bool
    @Binding var PicIdx: Int
    @Binding var currentPicIdx: Int
    var body: some View {
        Button {
            currentPicIdx += 1
        } label: {
            Image(systemName: currentPicIdx < PicIdx ? "arrow.forward.circle.fill" : "arrow.forward.circle").foregroundColor(.primary)
        }//.disabled(!isRightExist) // isRightExist에 대해 독립적인 계산 필요
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
