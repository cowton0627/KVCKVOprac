//
//  ViewController.swift
//  KVCKVOprac
//
//  Created by Chun-Li Cheng on 2023/7/27.
//

import UIKit

class ViewController: UIViewController {
    
    // 真 KVC 物件，接值用
    internal var kvcFirst = KVCObject()
    
    private var text = ""
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // 偽 KVC 反向
//        if KVCObject.string != "" {
//            text = KVCObject.string
//            firstLabel.text = text
//        }
        
        if let text = kvcFirst.value(forKey: "string") as? String,
           text != "" {
            firstLabel.text = text
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? SecondViewController,
           let text = firstTextField.text {
            vc.kvcSecond.setValue(text, forKey: "string")
        }
    }
    
    @IBAction func unwindToFirest(segue: UIStoryboardSegue) {
        if let vc = segue.source as? SecondViewController,
           let text = vc.secondTextField.text {
            kvcFirst.setValue(text, forKey: "string")
        }
    }

    @IBAction func firstBtnTapped(_ sender: UIButton) {
        // 偽 KVC 正向
//        guard let text = firstTextField.text else { return }
//        KVCObject.setValue(text, forKey: "string")
        
    }
    
}

