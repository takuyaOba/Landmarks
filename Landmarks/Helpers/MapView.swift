//
//  MapView.swift
//  Landmarks
//
//  Created by mt-square.toba on 2022/03/22.
//  Copyright © 2022 takuyaOba. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
   
   func makeUIView(context: Context) -> MKMapView {
       MKMapView(frame: .zero)
   }

   func updateUIView(_ uiview: MKMapView, context: Context) {
       let coordinate = CLLocationCoordinate2D(latitude: 34.011286, longitude: -116.166868)
       
       let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
       
       let region = MKCoordinateRegion(center: coordinate, span: span)
       
       uiview.setRegion(region, animated: true)
   }

}


struct MapView_Previews: PreviewProvider {
   static var previews: some View {
       MapView()
   }
}
