//
//  AuthService.swift
//  BreakPoint
//
//  Created by Shuvendu Bikash on 30/11/17.
//  Copyright © 2017 Shuvendu Bikash. All rights reserved.
//

import Foundation
import Firebase

class AuthService{
    static let instance = AuthService()
    
    func registerUser(withEmail email:String, andPassword password: String, userCreationComplete: @escaping(_ status: Bool, _ error: Error?) -> ()){
        Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
            guard let user = user else {
                userCreationComplete(false, error)
                return
            }
            
            let userData = ["provider":user.providerID, "email": user.email]
            DataService.instance.createDBUser(uid: user.uid, userData: userData)
            userCreationComplete(true, nil)
        }
    }
    
    func loginUser(withEmail email:String, andPassword password: String, loginComplere: @escaping(_ status: Bool, _ error: Error?) -> ()){
        Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
            if error != nil {
                loginComplere(false, error)
                return

            }
            loginComplere(true, nil)
        }
    }
}
