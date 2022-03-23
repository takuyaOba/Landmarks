//
//  LandmarkList.swift
//  Landmarks
//
//  Created by mt-square.toba on 2022/03/23.
//  Copyright © 2022 takuyaOba. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
            List(landmarkData, id: \.id) { landmark in
                LandmarkRow(landmark: landmark)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
