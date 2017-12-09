//
//  UIViewControllerExt.swift
//  goal-post
//
//  Created by Le Dang Dai Duong on 12/9/17.
//  Copyright © 2017 Le Dang Dai Duong. All rights reserved.
//

import UIKit

extension UIViewController {
    
    // Customize presentation of the next VC
    func presentDetail(_ viewControllerToPresent: UIViewController) {
        let transition = CATransition()
        transition.duration = 0.3
        // Push current VC off from the right to the left and present the new one
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromRight
        self.view.window?.layer.add(transition, forKey: kCATransition)
        
        present(viewControllerToPresent, animated: false, completion: nil)
    }
    
    func dismissDetail(_ viewControllerToPresent: UIViewController) {
        let transition = CATransition()
        transition.duration = 0.3
        // Push current VC off from the right to the left and present the new one
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromLeft
        self.view.window?.layer.add(transition, forKey: kCATransition)

        dismiss(animated: false, completion: nil)
    }
    
}
