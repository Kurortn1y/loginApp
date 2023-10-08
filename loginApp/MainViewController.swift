//
//  ViewController.swift
//  loginApp
//
//  Created by Roman on 07.10.23.
//

import UIKit

final class MainViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let userName = "Roman"
    private let password = "11"
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondVC = segue.destination as? SecondViewController
        secondVC?.name = userName
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTF.text == userName, passwordTF.text == password else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password"
            )
            return false
        }
        return true
    }
    
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    
    @IBAction func forgotPressed(_ sender: UIButton) {
        if sender.tag == 0 {
            showAlert(withTitle: "Oops", andMessage: "Your name is \(userName)😏")
        } else {
            showAlert(withTitle: "Oops", andMessage: "Your password is \(password)🤓")
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        present(alert,animated: true)
        let okAction = UIAlertAction(title: "OK", style: .default)
        { (action)
            in self.passwordTF.text = ""
        }
        alert.addAction(okAction)
    }
    
}


