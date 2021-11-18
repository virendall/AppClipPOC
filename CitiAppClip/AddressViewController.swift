//
//  AddressViewController.swift
//  CitiAppClip
//
//  Created by Virender Dall on 18/11/21.
//

import UIKit

class AddressViewController: UIViewController {
    
    @IBOutlet var addressTextField: UITextField!
    @IBOutlet var cityNameTextField: UITextField!
    @IBOutlet var stateTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension AddressViewController {
    @IBAction func finish() {
        UserModel.shared.addressCity = cityNameTextField.text
        UserModel.shared.address = addressTextField.text
        UserModel.shared.state = stateTextField.text
        self.showAlert(msg: "Thank you \(UserModel.shared.firstName!)! Our executive will reach out to you with in next 5 days.", action: UIAlertAction(title: "OK", style: .default, handler: { _ in
            let vc = self.storyboard?.instantiateViewController(identifier: "ViewController")
            UserModel.shared.reset()
            self.navigationController?.viewControllers = [vc!]
        }))
    }
}

extension UIViewController {
    
    func showAlert(_ title: String? = nil, msg: String?, action: UIAlertAction) {
        let alert = UIAlertController(
            title: title,
            message: msg,
            preferredStyle: .alert
        )
        alert.addAction(action)
        self.present(alert, animated: true)
    }
}
