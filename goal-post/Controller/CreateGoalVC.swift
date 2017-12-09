//
//  CreateGoalVC.swift
//  goal-post
//
//  Created by Le Dang Dai Duong on 12/9/17.
//  Copyright © 2017 Le Dang Dai Duong. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController {

    @IBOutlet weak var goalTxtView: UITextView!
    @IBOutlet weak var shortTermBtn: UIButton!
    @IBOutlet weak var longTermBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
     
    }
    
    @IBAction func shortTermBtnPressed(_ sender: Any) {
    }

    @IBAction func longTermBtnPressed(_ sender: Any) {
    }
    
    @IBAction func nextBtnPressed(_ sender: Any) {
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismissDetail(self)
    }
    
}
