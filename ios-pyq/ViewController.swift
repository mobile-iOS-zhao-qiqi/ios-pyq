//
//  ViewController.swift
//  ios-pyq
//
//  Created by Qiqi Zhao on 2022/11/3.
//

import UIKit

class TodoViewController: UIViewController {
    
    @IBOutlet var plusBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //todo: add a 
    }
}

class CreateTodoViewController: UIViewController {
    @IBAction func addTodo(_sender:Any) {
        //Todo: pass content to main list
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}


class PersonalInfoViewController: UIViewController {
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let logoutBtn = UIButton()
        
        logoutBtn.backgroundColor = UIColor(red: 17.0/255.0, green: 119.0/255.0, blue: 151.0/255.0, alpha: 1.0)
        logoutBtn.setTitle("退出登陆", for: .normal)
        logoutBtn.setTitleColor(UIColor .white, for: .normal)
        
        //        logoutBtn.frame = CGRectMake(self.view.frame.width * 0.08,self.view.frame.height * 0.8, self.view.frame.width * 0.9, self.view.frame.height * 0.05)
        
        self.view.addSubview(logoutBtn)
        
        //contriant - position
        logoutBtn.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            logoutBtn.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            logoutBtn.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            logoutBtn.widthAnchor.constraint(equalTo: self.view.widthAnchor,multiplier:0.8)
        ])
        logoutBtn.layer.cornerRadius = 1.5
        
    }
}
