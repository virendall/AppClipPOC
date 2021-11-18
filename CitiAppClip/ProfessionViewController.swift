//
//  ProfessionViewController.swift
//  CitiAppClip
//
//  Created by Virender Dall on 18/11/21.
//

import UIKit

class ProfessionViewController: UIViewController {
    
    @IBOutlet var occupationTextField: UITextField!
    @IBOutlet var companyNameTextField: UITextField!
    @IBOutlet var incomeTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        UserModel.shared.occupation = occupationTextField.text
        UserModel.shared.companyName = companyNameTextField.text
        UserModel.shared.income = incomeTextField.text
        return [occupationTextField, companyNameTextField, incomeTextField].filter { !$0!.hasText }
            .count == 0
    }
}
