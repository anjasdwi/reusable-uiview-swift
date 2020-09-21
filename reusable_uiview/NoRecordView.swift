//
//  NoRecordView.swift
//  reusable_uiview
//
//  Created by Anjas Dwi on 18/08/20.
//  Copyright © 2020 Anjas Dwi. All rights reserved.
//

import UIKit

class NoRecordView: UIView {

    @IBOutlet weak var textNotFound: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    init(width: Double, text: String = "") {
        super.init(frame: CGRect(x: 0.0, y: 0.0, width: width, height: 0.0))
        self.commonInit()
        
        self.textNotFound.text = text
        self.setAutoHeight()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    fileprivate func commonInit() {
        let viewFromXib = Bundle.main.loadNibNamed(String(describing: NoRecordView.self), owner: self, options: nil)![0] as! UIView
        viewFromXib.frame = self.bounds
        addSubview(viewFromXib)
    }
    
    fileprivate func setAutoHeight() {
        let textFrameSize = self.textNotFound.getSize(constrainedWidth:self.frame.size.width)
        let height = self.image.frame.size.height + 16 + textFrameSize.height
        let paddingLeft = 20.0
        let paddingRight = paddingLeft*2
        
        self.frame = CGRect(x: paddingLeft , y: 0, width: Double(self.frame.size.width) - paddingRight, height: Double(height))
    }
    
}
