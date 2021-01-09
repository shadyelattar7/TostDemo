//
//  ControllerProvider.swift
//  ToastView
//
//  Created by Elattar on 10/20/20.
//  Copyright © 2020 Shadi Elattar. All rights reserved.
//

import Foundation
import UIKit

enum Storyboards: String{
    case homeStoryboard = "Main"
}

class ControllerProvider {
    
    class func viewController<vc: UIViewController>(storyboard:Storyboards, className: vc.Type, presentationStyle: UIModalPresentationStyle) -> vc{
        let sb  = UIStoryboard(name: storyboard.rawValue, bundle: nil)
        let identfier = String(describing: className.self)
        let vc = sb.instantiateViewController(withIdentifier: identfier) as! vc
        
        vc.modalPresentationStyle = presentationStyle
        
        return vc
        
    }
}
