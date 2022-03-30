//
//  CategoryRow.swift
//  Landmarks
//
//  Created by mt-square.toba on 2022/03/29.
//  Copyright © 2022 takuyaOba. All rights reserved.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String  // カテゴリ名
    var items: [Landmark]// カテゴリに属する観光地リスト
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)  // 左からパディング
                .padding(.top, 5)  // 上からパディング
            
            ScrollView(.horizontal, showsIndicators: false) {  // 水平方向のスクロール & インデ
            HStack(alignment: .top, spacing: 0){
            ForEach(items) { landmark in
//                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {  対象ごとのリンクが未実装なので...
                //https://hirlab.net/nblog/category/programming/art_1750/#:~:text=%E3%81%BE%E3%81%97%E3%81%9F%E3%81%AD%EF%BC%81-,Step%205.%20%E3%83%93%E3%83%A5%E3%83%BC%E3%81%AE%E3%83%8A%E3%83%93%E3%82%B2%E3%83%BC%E3%82%B7%E3%83%A7%E3%83%B3%E3%82%92%E3%81%A4%E3%81%AA%E3%81%92%E3%82%8B,-%E5%88%9D%E6%9C%9F%E3%81%AB%E4%BD%9C%E6%88%90
                   CategoryItem(landmark: landmark)
//                }
                }
            }
        }
            .frame(height: 185)

        }
    }
}


struct CategoryRow_Previews: PreviewProvider {
    static var landmarks = UserData().landmarks  // プレビューでは観光地データを直接使用
    static var previews: some View {
        
        CategoryRow(
        categoryName: landmarks[0].category.rawValue,  // 仮で0番目の観光地カテゴリ名を使用
        items: Array(landmarks.prefix(3))  // 仮で先頭から3要素だけ
        )
    }
}
