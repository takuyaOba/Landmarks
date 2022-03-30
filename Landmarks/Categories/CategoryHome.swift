//
//  CategoryHome.swift
//  Landmarks
//
//  Created by mt-square.toba on 2022/03/28.
//  Copyright © 2022 takuyaOba. All rights reserved.
//

import SwiftUI

import SwiftUI
 
struct CategoryHome: View {
    @EnvironmentObject var userData: UserData
    var body: some View {
        NavigationView{
        List {
            userData.features[0].image
                .resizable()
                .scaledToFill()
                .frame(height: 200)
                .clipped()
                .listRowInsets(EdgeInsets())
            
            ForEach(userData.categories.keys.sorted(), id: \.self) { key in
                CategoryRow(categoryName: key, items: self.userData.categories[key]!)
                    .listRowInsets(EdgeInsets())
                }
            }
            .navigationBarTitle("Featured")
        }
    }
}





struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(UserData())
        }
}

