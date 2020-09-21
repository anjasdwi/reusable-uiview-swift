//
//  lableExtension.swift
//  reusable_uiview
//
//  Created by Anjas Dwi on 18/08/20.
//  Copyright © 2020 Anjas Dwi. All rights reserved.
//

import UIKit

extension UILabel {
    //get size UILabel based on string content
    func getSize(constrainedWidth: CGFloat) -> CGSize {
        return systemLayoutSizeFitting(CGSize(width: constrainedWidth, height: UIView.layoutFittingCompressedSize.height), withHorizontalFittingPriority: .required, verticalFittingPriority: .fittingSizeLevel)
    }
}
