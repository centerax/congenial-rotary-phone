//
//  ViewController.swift
//  testci
//
//  Created by cobas on 12/6/16.
//  Copyright © 2016 Ebizmarts. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var btnOther: UIButton!

    @IBOutlet weak var lblTap: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func btnTap(_ sender: Any) {
        btnOther.accessibilityIdentifier="MyLabel";
        btnOther.setTitle("Hello", for: UIControlState.normal);

    }

}

