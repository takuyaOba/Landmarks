//
//  CategoryHome.swift
//  Landmarks
//
//  Created by mt-square.toba on 2022/03/28.
//  Copyright © 2022 takuyaOba. All rights reserved.
//

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var userData: UserData
    var body: some View {
        NavigationView{
        List {
            ForEach(userData.categories.keys.sorted(), id: \.self) { key in
                Text(key)
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
