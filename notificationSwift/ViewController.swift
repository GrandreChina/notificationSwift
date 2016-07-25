//
//  ViewController.swift
//  notificationSwift
//
//  Created by Grandre on 16/1/26.
//  Copyright © 2016年 革码者. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
//    定义一个闭包
    var bi闭包 = {(v:UIViewController) -> String in print("haha")
        
        return "hello"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "showAlert:", name: "touchScreen", object: nil)
        
        let SecondVC = SecondViewController()
        let SecondTextFidld = SecondVC.textField2
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "textfieldValueChange:", name: "textfieldValueChange", object:SecondTextFidld)
        
//        NSNotificationCenter.defaultCenter().addObserver(self, selector: "textfieldValueChange:", name: "textfieldValueChange", object:nil)
//        UITextFieldTextDidBeginEditingNotification
//        UITextFieldTextDidChangeNotification
//        UITextFieldTextDidEndEditingNotification
    }
    
    
    
    func textfieldValueChange(notification:NSNotification){
        let field = notification.object as! UITextField
        label.text = field.text
        
    }
//    func textfieldValueChange(notification:NSNotification){
//        let field = notification.object as! SecondViewController
//        label.text = field.textField2.text
//        
//    }
    func showAlert(notification:NSNotification){
        let alertV = UIAlertController(title: "notification", message: "grandre", preferredStyle: UIAlertControllerStyle.Alert)
        let alertA = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default) { (_) -> Void in
            print("dismiss ~")
        }
        alertV.addAction(alertA)
        self.presentViewController(alertV, animated: true, completion: nil)
        print(notification.object)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        NSNotificationCenter.defaultCenter().postNotificationName("touchScreen", object: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let nextV = segue.destinationViewController as! SecondViewController
//        函数递送给第二ViewController
        nextV.function回调 = self.get获取nextV的textfield值
//        准委托方式。
        nextV.firstVC = self
    }
    
    func get获取nextV的textfield值(v: UITextField) -> Void{
        let V = v
        print(V.text)
    }
    
    func bi闭包函数(n:Int){
      var bi: (value: Bool?) -> Int
       
        
       
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    deinit{
        NSNotificationCenter.defaultCenter().removeObserver(self)
        print("推出界面")
    }

}

