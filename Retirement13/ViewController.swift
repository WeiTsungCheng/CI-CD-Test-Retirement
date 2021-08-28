//
//  ViewController.swift
//  Retirement13
//
//  Created by WEI-TSUNG CHENG on 2021/8/10.
//

import UIKit
import AppCenterCrashes
import AppCenterAnalytics

class ViewController: UIViewController {
    
    
    @IBOutlet weak var monthlyInvestmentsTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var retirementAgeTextField: UITextField!
    @IBOutlet weak var interestRateTextField: UITextField!
    @IBOutlet weak var savingsTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        if Crashes.hasCrashedInLastSession {
            let alert = UIAlertController(title: "Oops", message: "Sorry about that, an error occured.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "It's cool", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
        Analytics.trackEvent("navigate_to_caculate")
    }

    @IBAction func calculateButton_TouchUpInside(_ sender: Any) {
//        Crashes.generateTestCrash()
        
        let current_age: Int? = Int(ageTextField.text!)
        let planned_retirement_age: Int? = Int(retirementAgeTextField.text!)
        let property = [
            "current_age": String(current_age!),
            "planned_retirement_age": String(planned_retirement_age!)]
        Analytics.trackEvent("caculate_retirement_account", withProperties: property)
    }


}

