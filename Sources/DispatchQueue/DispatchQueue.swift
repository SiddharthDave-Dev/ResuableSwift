//
//  DispatchQueue.swift
//  TierList
//
//  Created by Siddharth Dave on 11/28/24.
//

import UIKit

static func delay(_ delay: TimeInterval, completion: @escaping () -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
        completion()
    }
}
