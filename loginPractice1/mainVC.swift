//
//  mainVC.swift
//  loginPractice1
//
//  Created by 황현지 on 2020/12/17.
//

import UIKit

class mainVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logOutBtn(_ sender: Any) {
        
        let logoutAlert = UIAlertController(title: "확인", message: "정말로 로그아웃 하시겠습니까?", preferredStyle: .actionSheet)
        
        let cancleBtn = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        
        let confirmLogOutBtn = UIAlertAction(title: "로그아웃", style: .default) { (_) in
            
            //이니셜뷰 체인지
            var initialVC: UIViewController
            let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
           
            initialVC = (mainStoryboard.instantiateViewController(withIdentifier: "AuthVC"))
            UIApplication.shared.keyWindow?.rootViewController = initialVC
        }
        
        logoutAlert.addAction(cancleBtn)
        logoutAlert.addAction(confirmLogOutBtn)
        
        present(logoutAlert, animated: true, completion: nil)
    }
    


}
