//
//  ViewController2.swift
//  App1
//
//  Created by Vương Toàn Bắc on 5/15/20.
//  Copyright © 2020 VTB. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    var text:String = ""
    @IBOutlet weak var tfName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        tfName.text = text

    }
    
    @IBAction func actionBack(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "view1") as! ViewController
        vc.text = tfName.text ?? ""
        self.present(vc, animated: true, completion: nil)
    }
    
    

}
