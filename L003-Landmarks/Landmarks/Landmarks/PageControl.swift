//
//  PageControl.swift
//  Landmarks
//
//  Created by RAIN on 2020/10/9.
//  Copyright © 2020 Smartech. All rights reserved.
//

import SwiftUI
import UIKit

struct PageControl: UIViewRepresentable {

    var numberOfPages: Int
    @Binding var currentPage: Int


    func makeUIView(context: Context) -> UIPageControl {
        let control = UIPageControl()
        control.numberOfPages = numberOfPages

        return control
    }

    func updateUIView(_ uiView: UIPageControl, context: Context) {
        uiView.currentPage = currentPage
    }

}
