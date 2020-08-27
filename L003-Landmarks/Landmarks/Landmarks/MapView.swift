//
//  MapView.swift
//  Landmarks
//
//  Created by RAIN on 2020/8/27.
//  Copyright © 2020 Smartech. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {

    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }

}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
