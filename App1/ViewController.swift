//
//  ViewController.swift
//  App1
//
//  Created by Vương Toàn Bắc on 5/15/20.
//  Copyright © 2020 VTB. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var text:String = ""

    @IBOutlet weak var lblSetName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        lblSetName.text = text
    }

    @IBAction func actionNextScreen(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "view2") as! ViewController2
        vc.text = lblSetName.text ?? ""
        self.present(vc, animated: true, completion: nil)
    }
    
}

