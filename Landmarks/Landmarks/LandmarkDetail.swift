//
//  ContentView.swift
//  Landmarks
//
//  Created by mt-square.toba on 2022/03/22.
//  Copyright © 2022 takuyaOba. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var userData: UserData
    var body: some View {
        VStack {
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height:300)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)

        VStack(alignment: .leading) {
            Text("Turtle Rock")
                .font(.title)
            HStack {
                Text("Joshua Tree National Park")
                    .font(.subheadline)
                
                Spacer()
                
                Text("California")
                    .font(.subheadline)
                }
            }
            .padding()
            Spacer()
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
            .environmentObject(UserData())
    }
}
