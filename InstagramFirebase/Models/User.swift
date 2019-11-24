//
//  User.swift
//  InstagramFirebase
//
//  Created by Ganesh Prasad on 11/07/19.
//  Copyright © 2019 Ganesh Prasad. All rights reserved.
//

import Foundation


struct User {
    
    let uid: String
    let username: String
    let profileImageUrl: String
    
    init(uid: String, dictionary: [String: Any]) {
        self.uid = uid
        self.username = dictionary["username"] as? String ?? ""
        self.profileImageUrl = dictionary["profileImageUrl"] as? String ?? ""
    }
}
