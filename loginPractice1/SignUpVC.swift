//
//  SignUpVC.swift
//  loginPractice1
//
//  Created by 황현지 on 2020/12/17.
//

import UIKit

class SignUpVC: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    @IBOutlet weak var confirmPwTextField: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
   
    @IBAction func backBtn(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func signUpBtn(_ sender: Any) {
        
        if (usernameTextField?.text == "" || emailTextField.text == "" || pwTextField.text == "" || confirmPwTextField.text == "") {
            
//            let signUpAlert = UIAlertController(title: "경고", message: " *는 필수항목 입니다" , preferredStyle: .alert)
//
//            let cancelBtn = UIAlertAction(title: "확인", style: .cancel, handler: nil)
//
//            signUpAlert.addAction(cancelBtn)
//
//            present(signUpAlert, animated: true, completion: nil)
//
            
            AlertService.alert(title: "경고", message: "*는 필수항목 입니다.", view:  self)
        }
        
        
        if (pwTextField.text! != confirmPwTextField.text!) {
//            let signUpBtn = UIAlertController(title: "경고", message: "password가 일치하지 않습니다.", preferredStyle: .alert)
//             let cancelBtn = UIAlertAction(title: "확인", style: .cancel, handler: nil)
//
//             signUpBtn.addAction(cancelBtn)
//
//             present(signUpBtn, animated: true, completion: nil)
            
            AlertService.alert(title: "경고", message: "password가 일치하지 않습니다.", view: self)
        }
        
        navigationController?.popViewController(animated: true)
        
        print("회원가입 완료")
        
       
    }
    
    
    
    
    
    

}
