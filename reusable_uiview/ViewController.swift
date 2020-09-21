//
//  ViewController.swift
//  reusable_uiview
//
//  Created by Anjas Dwi on 18/08/20.
//  Copyright © 2020 Anjas Dwi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let noRecordView = NoRecordView(width: Double(self.view.bounds.width), text: "Lorem ipsum is a dummy text used to replace text in some areas just for the purpose of an example")
        self.view.addSubview(noRecordView)
    }


}

