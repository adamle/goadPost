//
//  FinishGoalVC.swift
//  goal-post
//
//  Created by Le Dang Dai Duong on 12/9/17.
//  Copyright © 2017 Le Dang Dai Duong. All rights reserved.
//

import UIKit
import CoreData

class FinishGoalVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var createGoalBtn: UIButton!
    @IBOutlet weak var pointsTxtField: UITextField!
    
    var goalDescription: String!
    var goalType: GoalType!
    
    // Public func of initData from FinishGoalVC, to be used in CreateGoalVC
    func initData(description: String, type: GoalType) {
        self.goalDescription = description
        self.goalType = type
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createGoalBtn.bindToKeyboard()
        pointsTxtField.delegate = self
    }

    @IBAction func backBtnPressed(_ sender: Any) {
        dismissDetail(self)
    }
    
    @IBAction func createGoalBtnPressed(_ sender: Any) {
        if pointsTxtField.text != "" && Int32(pointsTxtField.text!) != nil {
            // Pass data into CoreData
            self.save { (complete) in
                if complete {
                    dismiss(animated: true, completion: nil)
                }
            }
        }
    }
    
    // Save data to CoreData so that GoalVC can fetch
    func save(completion: (_ finished: Bool) -> ()) {
        // Managed Object Context
        guard let managedContext = appDelegate?.persistentContainer.viewContext else { return}
        // Tell the managedContext to manage such as save data to the goal of class Goal coreData
        let goal = Goal(context: managedContext)
        
        goal.goalDescription = goalDescription
        goal.goalType = goalType.rawValue
        goal.goalCompletionValue = Int32(pointsTxtField.text!)!
        goal.goalProgress = Int32(0)
        
        // Try this, but if it doesn't work, catch the error
        do {
            try managedContext.save()
            print("Successfully save data")
            completion(true)
        } catch {
            debugPrint("Could not save: \(error.localizedDescription)")
            completion(false)
        }
    }
}















