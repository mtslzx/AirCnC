//
//  ContentView.swift
//  AirCnC
//
//  Created by 하일환 on 2023/02/03.
//

import SwiftUI

struct ContentView: View {
    
    var product: Product
    
    @State private var date: Date = Date()
    @State private var isFavorite: Bool = false
    @State private var ImgIdx: Int = 5  // 총 이미지 개수
    @State private var currentImgIdx: Int = 0  // 현재 보고있는 이미지 번호
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
        ZStack {
            if let imgLst = product.productImage? {  // 옵셔널 바인딩
                HStack {
                    LeftButton(ImgIdx: $ImgIdx, currentImgIdx: $currentImgIdx)
                    Image(imgLst[currentImgIdx])  // imgView
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    //                    .frame(width: UIScreen.main.bounds.width*3/4, height: UIScreen.main.bounds.height/3)
                    RightButton(ImgIdx: $ImgIdx, currentImgIdx: $currentImgIdx, imgLst:imgLst)
                }
                Text("\(currentImgIdx+1)|\(imgLst.count)")  // imgCounter
                    .font(.callout)
                    .fontWidth(.expanded)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .tracking(7)
                    .padding(.top, 220.0)
                    .opacity(0.5)
            } else {
                Text("There are no Image")
            }
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
            Image("franky").resizable().clipShape(Circle()).frame(width: 40, height: 40)
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
        VStack() {
            DatePicker("\(date, formatter:  dateFormatter)", selection: $date, in: Date()..., displayedComponents: [.date])
                .datePickerStyle(.automatic)
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
    @Binding var ImgIdx: Int
    @Binding var currentImgIdx: Int
    var body: some View {
        Button() {
            currentImgIdx -= 1
        } label: {
            Image(systemName: currentImgIdx > 0 ? "arrow.left.circle.fill" : "arrow.left.circle").foregroundColor(.primary)
        }.disabled(0 == currentImgIdx)
    }
}

struct RightButton: View {
//    @Binding var isRightExist: Bool
    @Binding var ImgIdx: Int
    @Binding var currentImgIdx: Int
    @Binding var imgLst: [String]
    
    var body: some View {
        Button {
            currentImgIdx += 1
        } label: {
            Image(systemName: currentImgIdx < imgLst.count-1 ? "arrow.forward.circle.fill" : "arrow.forward.circle").foregroundColor(.primary)
        }.disabled(currentImgIdx + 1 == imgLst.count) // isRightExist에 대해 독립적인 계산 필요
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(product: productSample)
    }
}
