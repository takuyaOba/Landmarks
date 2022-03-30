//
//  UserData.swift
//  Landmarks
//
//  Created by mt-square.toba on 2022/03/26.
//  Copyright © 2022 takuyaOba. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject  {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
    @Published var categories = categoriesData
    @Published var features = featuresData

}
