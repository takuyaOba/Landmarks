//
//  LandmarkList.swift
//  Landmarks
//
//  Created by mt-square.toba on 2022/03/23.
//  Copyright © 2022 takuyaOba. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    
    var showFavoritesOnly: Bool = true
    
    var body: some View {
        NavigationView {
            List{
            ForEach(landmarkData) { landmark in
                if !self.showFavoritesOnly || landmark.isFavorite{
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
        }
    }
}
