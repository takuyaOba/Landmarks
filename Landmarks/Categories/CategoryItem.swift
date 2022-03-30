//
//  CategoryItem.swift
//  Landmarks
//
//  Created by mt-square.toba on 2022/03/30.
//  Copyright © 2022 takuyaOba. All rights reserved.
//

import SwiftUI

struct CategoryItem: View {
    var landmark: Landmark
    var body: some View {
        VStack(alignment: .leading) {
                landmark.image
                    .resizable()
                    .frame(width: 155, height: 155)
                    .cornerRadius(20)
                Text(landmark.name)
                    .font(.caption)
            }
            .padding(.leading, 15)
        }
    }

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(landmark: UserData().landmarks[0])  // 仮で一番目の観光地
    }
}
