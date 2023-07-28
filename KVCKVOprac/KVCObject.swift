//
//  KVCObject.swift
//  KVCKVOprac
//
//  Created by Chun-Li Cheng on 2023/7/27.
//

import Foundation

class KVCObject: NSObject {
    @objc dynamic var string: String!

//    @objc static var string: String = ""
    
    override init() {
        self.string = ""
        super.init()
    }

    
}

