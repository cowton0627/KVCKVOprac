//
//  SecondViewController.swift
//  KVCKVOprac
//
//  Created by Chun-Li Cheng on 2023/7/27.
//

import UIKit

class SecondViewController: UIViewController {

    // 真 KVC 物件，接值用
    internal var kvcSecond = KVCObject()
    
    // For KVO 傳值
    internal var kvcBack = KVCObject()
    internal var kvcFront = KVCObject()
    var observation: NSKeyValueObservation?
        
    private var text = ""
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var secondTextField: UITextField!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        observation = kvcFront.observe(\.string, options: [.new]) {
            kvcObject, change in
            guard let newValue = change.newValue else { return }
            print("Front Passing Data Changed : ", newValue!)
            self.text = newValue!
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 偽 KVC 正向
//        text = KVCObject.value(forKey: "string") as! String
//        secondLabel.text = text

//        text = kvcSecond.value(forKey: "string") as! String
//        secondLabel.text = text
        
        secondLabel.text = text
    }
    
    @IBAction func secondBtnTapped(_ sender: UIButton) {
        // 偽 KVC 反向
//        guard let text = secondTextField.text else { return }
//        KVCObject.string = text

        guard let text = secondTextField.text else { return }
        kvcBack.setValue(text, forKey: "string")
        self.navigationController?.popViewController(animated: true)
    }
    
    deinit {
        observation?.invalidate()
    }
    

}
