//
//  PageViewController.swift
//  Landmarks
//
//  Created by RAIN on 2020/10/9.
//  Copyright © 2020 Smartech. All rights reserved.
//

import SwiftUI
import UIKit

struct PageViewController: UIViewControllerRepresentable {

    var controllers: [UIViewController]

    func makeUIViewController(context: Context) -> UIPageViewController {
        let pageViewController = UIPageViewController(
            transitionStyle: .scroll,
            navigationOrientation: .horizontal
        )

        return pageViewController
    }

    func updateUIViewController(_ uiViewController: UIPageViewController, context: Context) {
        uiViewController.setViewControllers(
            [controllers[0]], direction: .forward, animated: true
        )
    }

    class Coordinator: NSObject {

        var parent: PageViewController

        init(_ pageViewController: PageViewController) {
            self.parent = pageViewController
        }

    }

}
