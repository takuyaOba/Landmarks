//
//  LandmarkList.swift
//  Landmarks
//
//  Created by mt-square.toba on 2022/03/23.
//  Copyright © 2022 takuyaOba. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var userData: UserData
    
    @State var showFavoritesOnly: Bool = false
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $userData.showFavoritesOnly) {
                    Text("Favorites only")
                }

                ForEach(landmarkData) { landmark in
                    if !self.userData.showFavoritesOnly || landmark.isFavorite{
                        NavigationLink(destination: LandmarkDetail()) {
                            LandmarkRow(landmark: landmark)
                            }
                        }
                    }
                }
        .navigationBarTitle(Text("Landmarks"))
    }
}


struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(UserData())
        }
    }
}
