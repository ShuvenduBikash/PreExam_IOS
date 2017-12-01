//
//  Message.swift
//  PreExam
//
//  Created by Shuvendu Bikash on 1/12/17.
//  Copyright © 2017 Shuvendu Bikash. All rights reserved.
//

import Foundation

class  Message{
    private var _content: String
    private var _senderId: String
    
    var content: String {
        return _content
    }
    var senderId : String{
        return _senderId
    }
    
    init(content: String , sender: String) {
        self._content = content
        self._senderId = sender
    }
    
}
