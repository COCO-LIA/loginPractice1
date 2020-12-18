//
//  ForgotPwVC.swift
//  loginPractice1
//
//  Created by 황현지 on 2020/12/17.
//

import UIKit

class ForgotPwVC: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backBtn(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func confirmBtn(_ sender: Any) {
        
        if (emailTextField.text == "") {
            
           let inputEmailAlert = UIAlertController(title: "경고", message: "email이 입력되지 않았습니다.", preferredStyle: .alert)
            
           let cancelBtn = UIAlertAction(title: "확인", style: .cancel, handler: nil)
            
            inputEmailAlert.addAction(cancelBtn)
            
            present(inputEmailAlert, animated: true, completion: nil)
                        
        } else {
            
            let confirmAlert = UIAlertController(title: "전송완료", message: "입력하신 이메일로 패스워드가 전송되었습니다.", preferredStyle: .alert)
            
            let cancelBtn = UIAlertAction(title: "확인", style: .default) { (click) in
                
                //UIKit에서는 {}괄호가 두 개이상 넘어가면 인식어렵
                //그래서 앞에 self를 붙여준다.
                self.navigationController?.popViewController(animated: true)
            }
            
            confirmAlert.addAction(cancelBtn)
            
            present(confirmAlert, animated: true, completion: nil)
           
        }
        
        
        
    }
    
    
    

}
