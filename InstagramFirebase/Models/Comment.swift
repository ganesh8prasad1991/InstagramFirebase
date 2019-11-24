//
//  Comment.swift
//  InstagramFirebase
//
//  Created by Ganesh Prasad on 17/07/19.
//  Copyright © 2019 Ganesh Prasad. All rights reserved.
//

import Foundation


struct Comment {
    
    let user: User
    
    let text: String
    let uid: String
    
    init(user: User, dictionary: [String: Any]) {
        self.text = dictionary["text"] as? String ?? ""
        self.uid = dictionary["uid"] as? String ?? ""
        self.user = user
    }
}
