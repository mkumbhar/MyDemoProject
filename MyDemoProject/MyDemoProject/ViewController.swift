//
//  ViewController.swift
//  MyDemoProject
//
//  Created by Madhav Kumbhar on 12/07/17.
//  Copyright © 2017 Madhav Kumbhar. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    lazy var label : UILabel = {
        let lbl = UILabel()
        lbl.text = "My Demo App"
        self.view.addSubview(lbl)
        return lbl
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func updateViewConstraints() {
        label.snp.updateConstraints { make in
            make.center.equalToSuperview()
            make.width.equalTo(150)
            make.height.equalTo(60)
        }
        super.updateViewConstraints()
    }

}

