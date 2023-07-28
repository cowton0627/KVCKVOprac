//
//  SecondViewController.swift
//  KVCKVOprac
//
//  Created by Chun-Li Cheng on 2023/7/27.
//

import UIKit

class SecondViewController: UIViewController {

    internal var kvcSecond = KVCObject()
    
    private var text = ""
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var secondTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        let kvcObject = KVCObject()
//        text = KVCObject.value(forKey: "string") as! String
//        secondLabel.text = text
        
        // KVC 正向
//        text = KVCObject.value(forKey: "string") as! String
        text = kvcSecond.value(forKey: "string") as! String
        secondLabel.text = text
        
        
        
    }
    
    @IBAction func secondBtnTapped(_ sender: UIButton) {
        // KVC 反向
        guard let text = secondTextField.text else { return }
//        KVCObject.string = text

    
//        self.navigationController?.popViewController(animated: true)
    
    }
    
    

}
