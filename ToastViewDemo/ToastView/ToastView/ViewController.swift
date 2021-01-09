//
//  ViewController.swift
//  ToastView
//
//  Created by Elattar on 10/11/20.
//  Copyright © 2020 Shadi Elattar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var push_btn: UIButton!
    @IBOutlet weak var present_btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        push_btn.layer.cornerRadius = 8
        present_btn.layer.cornerRadius = 8
    }

    @IBAction func showToast(_ sender: Any) {

        ToastManager.shared.showToast(message: "No Internet Connection,No Internet Connection,No Internet Connection,No Internet Connection,No Internet Connection,No Internet Connection,No Internet Connection,No Internet Connection,No Internet Connection,No Internet Connection,No Internet Connection,No Internet Connection,No Internet Connection,", view: self.view, postion: .bottom, backgroundColor: .systemRed,icon: #imageLiteral(resourceName: "emoji"))
        

    }
    
    @IBAction func pushToProfile_btn(_ sender: Any) {
        
        let vc = ControllerProvider.viewController(storyboard: .homeStoryboard, className: ProfileVC.self, presentationStyle: .none)
        vc.name = "Push Shadi Elattar"
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    @IBAction func presentToProfile_btn(_ sender: Any) {
        let vc = ControllerProvider.viewController(storyboard: .homeStoryboard, className: ProfileVC.self, presentationStyle: .fullScreen)
           vc.name = "Present Shadi Elattar"
        present(vc, animated: true, completion: nil)
        
    }
    
}

