//
//  SignInVC.swift
//  loginPractice1
//
//  Created by 황현지 on 2020/12/17.
//

import UIKit

class SignInVC: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backBtn(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func signInBtn(_ sender: Any) {
        
        if (emailTextField.text == "") {
//            let signInEmailAlert = UIAlertController(title: "경고", message: "Email을 적어주십시오", preferredStyle: .alert)
//            let cancelBtn = UIAlertAction(title: "확인", style: .cancel, handler: nil)
//            
//            signInEmailAlert.addAction(cancelBtn)
//            
//            present(signInEmailAlert, animated: true, completion: nil)
            AlertService.alert(title: "경고", message: "Email을 적어주십시오", view: self)
        }
        
        if (pwTextField.text == "" ) {
            let signInPwAlert =
                UIAlertController(title: "경고", message: "password를 적어주십시오.", preferredStyle: .alert)
            let cancelBtn = UIAlertAction(title: "확인", style: .cancel, handler: nil)
            
            signInPwAlert.addAction(cancelBtn)
            
            present(signInPwAlert, animated: true, completion: nil)
        
        } else {
        
        //이니셜뷰 체인지
        var initialVC: UIViewController
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
            
            initialVC = (mainStoryboard.instantiateViewController(withIdentifier: "mainVC"))
        UIApplication.shared.keyWindow?.rootViewController = initialVC
    }
    }
   
}
