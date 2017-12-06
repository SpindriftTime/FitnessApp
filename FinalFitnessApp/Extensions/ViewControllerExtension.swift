//
//  ViewControllerExtension.swift
//  FinalFitnessApp
//
//  Created by Nicholas Jaeger on 12/6/17.
//  Copyright © 2017 Nicholas Jaeger. All rights reserved.
//

import Foundation
import UIKit

extension UIApplication {
    class func topViewController(viewController: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
        if let nav = viewController as? UINavigationController {
            return topViewController(viewController: nav.visibleViewController)
        }
        if let tab = viewController as? UITabBarController {
            if let selected = tab.selectedViewController {
                return topViewController(viewController: selected)
            }
        }
        if let presented = viewController?.presentedViewController {
            return topViewController(viewController: presented)
        }
        return viewController
    }
}
