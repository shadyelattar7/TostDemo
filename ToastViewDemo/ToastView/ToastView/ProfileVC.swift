//
//  ProfileVC.swift
//  ToastView
//
//  Created by Elattar on 10/20/20.
//  Copyright © 2020 Shadi Elattar. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {

    @IBOutlet weak var name_lbl: UILabel!
    
    var name: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name_lbl.text = name
    }
    


}
