//
//  NavigateToViewController.swift
//  EyeMeasure
//
//  Created by Siddharth Dave on 11/25/24.
//

import Foundation
import UIKit

static func navigateToViewController(from viewController: UIViewController, identifier: String) {
    guard let vc = viewController.storyboard?.instantiateViewController(withIdentifier: identifier) else {
        print("Error: ViewController with identifier \(identifier) not found.")
        return
    }
    
    viewController.navigationController?.pushViewController(vc, animated: true)
}

static func navigateToViewController<T: UIViewController>(from viewController: UIViewController, identifier: String, data: ((T) -> Void)? = nil) {
    guard let vc = viewController.storyboard?.instantiateViewController(withIdentifier: identifier) as? T else {
        print("Error: ViewController with identifier \(identifier) not found or wrong type.")
        return
    }
    
    // Pass data to the view controller
    data?(vc)
    
    viewController.navigationController?.pushViewController(vc, animated: true)
}

