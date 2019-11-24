//
//  FirebaseUtils.swift
//  InstagramFirebase
//
//  Created by Ganesh Prasad on 12/07/19.
//  Copyright © 2019 Ganesh Prasad. All rights reserved.
//

import Foundation
import FirebaseDatabase


extension Database {
    static func fetchUserWithUID(uid: String, completion: @escaping(User) -> ()) {
        Database.database().reference().child("users").child(uid).observeSingleEvent(of: .value, with: { (snapshot) in
            
            guard let userDictionary = snapshot.value as? [String: Any] else {return}
            
            let user = User(uid: uid, dictionary: userDictionary)
            completion(user)
        }) { (err) in
            print("Failed to fetch user for Posts:", err)
        }
        
    }
}
