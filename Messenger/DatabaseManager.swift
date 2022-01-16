//
//  DatabaseManager.swift
//  Messenger
//
//  Created by Mac on 16/01/22.
//

import Foundation
import FirebaseDatabase

final class DatabaseManager {
    static let shared = DatabaseManager()
    
    private let database = Database.database().reference()
    
}

// Mark: account managmen
extension DatabaseManager {
    public func userExists(widh email:String, completion: @escaping((Bool) -> Void)){
        var safeEmail = email.replacingOccurrences(of: ".", with: "-")
         safeEmail = email.replacingOccurrences(of: "@", with: "-")
        
        database.child(safeEmail).observeSingleEvent(of: .value, with: { snapshot in
            guard snapshot.value as? String != nil else {
                completion(false)
                return
            }
            
            completion(true)
        })
    }
    
    
    public func insertUser(with user: ChatAppUser){
        database.child(user.emailAddress).setValue([
            "first_name": user.firstName,
            "last_name": user.lastName
        ])
    }
    
    /*
     // check if database work
     // in database:
     public func test() {
     database.child("foo").setValue(["something": true])
     }
     
     // in view:
     
     DatabaseManager.shared.test()
     */
}

struct ChatAppUser{
    let firstName: String
    let lastName: String
    let emailAddress: String
    
    var safeEmail: String {
        var safeEmail = emailAddress.replacingOccurrences(of: ".", with: "-")
        safeEmail = safeEmail.replacingOccurrences(of: "@", with: "-")
        return safeEmail
    }
}

