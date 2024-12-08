//
//  Extension + UICollectionView.swift
//  TierList
//
//  Created by Siddharth Dave on 11/28/24.
//

import Foundation
import UIKit

extension UICollectionView {
    /// Registers a nib-based cell with the table view.
    /// - Parameters:
    ///   - nibName: The name of the nib file.
    ///   - identifier: The reuse identifier for the cell.
    func registerCollectionViewCell(withNibName nibName: String, identifier: String) {
        let nib = UINib(nibName: nibName, bundle: nil)
        self.register(nib, forCellWithReuseIdentifier: identifier)
    }
    
    func registerCollectionViewHeaderAndFooterCell(withNibName nibName: String, kind: String, identifier: String) {
        let nib = UINib(nibName: nibName, bundle: nil)
        self.register(nib, forSupplementaryViewOfKind: kind, withReuseIdentifier: identifier)
    }

}
