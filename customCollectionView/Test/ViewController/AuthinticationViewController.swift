//
//  AuthinticationViewController.swift
//  customCollectionView
//
//  Created by Macbook on 20/01/2020.
//  Copyright © 2020 Macbook. All rights reserved.
//

import UIKit
import Firebase

class AuthinticationViewController: UIViewController {
    
    
    
    
    @IBOutlet weak var emailTf: UITextField!
    
    
    @IBOutlet weak var passwordTf: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    
    
    
    @IBAction func signUP(_ sender: UIButton) {
        
        
//        let dataToSave : [String:Any] = ["email":emailTf.text,"password":passwordTf.text]
//
//
//
//        let db = Firestore.firestore()
//
//
//        db.collection("Users").addDocument(data: dataToSave)
        
        
        
        
        if let email = emailTf.text,let password = passwordTf.text {
                Auth.auth().createUser(withEmail: email, password: password) { (Users, Error) in
                    
                    if let firbeseError = Error {
                        print(firbeseError.localizedDescription)
                }
                    else{
                        print("success")
                        
                        
                        self.emailTf.text = ""
                        self.passwordTf.text = ""
                        
                        
                        self.emailTf.becomeFirstResponder()
                        
                        self.performSegue(withIdentifier: "signUpOrInToHome", sender: self)
                    }
                
            }
        }
        
        
        
        
        
    }
    
    
    
    
    
    @IBAction func signIn(_ sender: Any) {
        
        
        if let email = emailTf.text,let password = passwordTf.text{

        Auth.auth().signIn(withEmail: email, password: password) { (Users, Error) in
            if Users != nil
            {
                self.performSegue(withIdentifier: "signUpOrInToHome", sender: nil)
            }
            else {
                let alert = UIAlertController(title: "there was a problem", message: nil, preferredStyle: .alert)
                let okButton = UIAlertAction(title: "done", style: .default, handler: nil)
                alert.addAction(okButton)
                self.present(alert, animated: true, completion: nil)
            }
        }
        
        
        
        
        
        
    }
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
}
