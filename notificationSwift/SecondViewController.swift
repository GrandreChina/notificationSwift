//
//  SecondViewController.swift
//  notificationSwift
//
//  Created by Grandre on 16/1/26.
//  Copyright © 2016年 革码者. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBAction func 回调BTn(sender: UIButton) {
        self.function回调(self.textField2)
        self.firstVC.bi闭包(self)
        self.firstVC.bi闭包函数(6)
    }

    @IBOutlet weak var textField2: UITextField!
//函数类型
    override func viewWillDisappear(animated: Bool) {
//        NSNotificationCenter.defaultCenter().postNotificationName(UITextFieldTextDidChangeNotification, object: textField2)
//        print("发出通知")
//
//        NSNotificationCenter.defaultCenter().postNotificationName("textfieldValueChange", object: self)
    }
    var function回调:((UITextField) -> Void)!
    
    var firstVC: ViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

           }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

 

}
