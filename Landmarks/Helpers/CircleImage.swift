//
//  CircleImage.swift
//  Landmarks
//
//  Created by mt-square.toba on 2022/03/22.
//  Copyright © 2022 takuyaOba. All rights reserved.
//

import SwiftUI
import MapKit


struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
        .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4))
        .shadow(radius: 10)

    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
        }
    }

