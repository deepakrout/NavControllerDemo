//
//  LoginViewController.swift
//  NavControllerDemo
//
//  Created by Deepak Rout on 9/20/21.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginTapped(_ sender: Any) {
       navigateToMainInterface()
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//
//    }
    
    private func navigateToMainInterface() {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        guard let mainNavigationVC = mainStoryboard.instantiateViewController(identifier: "MainNavigationController") as? MainNavigationController else {
            return
        }
        
        print(mainNavigationVC.topViewController)
        print(mainNavigationVC.viewControllers)
        
        if let mainVC = mainNavigationVC.topViewController as? ViewController {
            mainVC.userName = userName.text
            mainVC.password = password.text
        }
        
        //mainNavigationVC.modalPresentationStyle = .fullScreen
        
        present(mainNavigationVC, animated: true, completion: nil)
    }
}
