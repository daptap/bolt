//
//  UserObject.swift
//  Bolt
//
//  Created by dave on 1/30/17.
//  Copyright © 2017 dave. All rights reserved.
//

import Foundation

class UserObject : NSObject {
    var SingletonUserObject : UserObject?
    var isLoggedIn : Bool = true
    var username : String?

    func Singleton() -> UserObject {
        if SingletonUserObject != nil {
            return SingletonUserObject!
        } else {
            let theUser : UserObject = UserObject.init()

            SingletonUserObject = theUser

            return SingletonUserObject!
        }
    }

}
