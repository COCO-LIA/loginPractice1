//
//  AlertService.swift
//  loginPractice1
//
//  Created by 황현지 on 2020/12/18.
//

import Foundation

import UIKit


class AlertService {

    static func alert(title: String, message: String,  view: UIViewController) {
        
       let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let cancelBtn = UIAlertAction(title: "확인", style: .cancel, handler: nil)
        
        alertController.addAction(cancelBtn)
        
        view.present(alertController, animated: true, completion: nil)
    }
    
    class UpAlertService {
        
        static func alert(title: String, message:String, view: UIViewController ) {
            
            let alertController = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
            let cancelBtn = UIAlertAction(title: title, style: .cancel, handler: nil)
            
            alertController.addAction(cancelBtn)
            
            view.present(alertController, animated: true, completion: nil)
        }
    }
    
}
