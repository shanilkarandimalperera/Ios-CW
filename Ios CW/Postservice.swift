//
//  Postservice.swift
//  Ios CW
//
//  Created by shanilka on 5/17/23.
//

import UIKit
import Firebase

struct TodoItem{
    var duration : String
    var name: String
    var focus1: String
    var focus2: String
    var focus3: String
    var intro: String
    var intro1: String
    

    init(KeyId: String, dictonary: [String: Any]) {
        self.duration = dictonary["duration"] as? String ?? ""
        self.name = dictonary["name"] as? String ?? ""
        self.focus1 = dictonary["focus1"] as? String ?? ""
        self.focus2 = dictonary["focus2"] as? String ?? ""
        self.focus3 = dictonary["focus3"] as? String ?? ""
        self.intro = dictonary["intro"] as? String ?? ""
        self.intro1 = dictonary["intro1"] as? String ?? ""
    }
}



struct Postservice {
    static let shared = Postservice()

   // let DB_REF = Database.database().reference()

    let DB_REF = Database.database(url: "https://ioscwnibm-default-rtdb.asia-southeast1.firebasedatabase.app").reference()

    func fetchAllItems() {
            DB_REF.child("extype1").observe(.childAdded) { (snapshot) in
                fetchSingleitem(id: snapshot.key) { todoItem in
                    print(todoItem)
                }
            }
        }
    
    func fetchSingleitem(id: String, completion: @escaping (TodoItem?) -> Void) {
           DB_REF.child("extype1").child(id).observeSingleEvent(of: .value) { (snapshot) in
               guard let dictionary = snapshot.value as? [String: Any] else {
                   completion(nil)
                   return
               }
               
               let todoItem = TodoItem(KeyId: id, dictonary: dictionary)
               completion(todoItem)
           }
       }
}












