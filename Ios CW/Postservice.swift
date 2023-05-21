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
    var url: String
    

    init(KeyId: String, dictonary: [String: Any]) {
        self.duration = dictonary["duration"] as? String ?? ""
        self.name = dictonary["name"] as? String ?? ""
        self.focus1 = dictonary["focus1"] as? String ?? ""
        self.focus2 = dictonary["focus2"] as? String ?? ""
        self.focus3 = dictonary["focus3"] as? String ?? ""
        self.intro = dictonary["intro"] as? String ?? ""
        self.intro1 = dictonary["intro1"] as? String ?? ""
        self.url = dictonary["url"] as? String ?? ""
    }
}


struct TodoMeal{
    var Protein : String
    var Carbohydrates: String
    var Fat: String
    var Others: String
    var intro: String
    

    init(KeyId: String, dictonary: [String: Any]) {
        self.Protein = dictonary["Protein"] as? String ?? ""
        self.Carbohydrates = dictonary["Carbohydrates"] as? String ?? ""
        self.Fat = dictonary["Fat"] as? String ?? ""
        self.Others = dictonary["Others"] as? String ?? ""
        self.intro = dictonary["intro"] as? String ?? ""
    }
}


struct Postservice {
    static let shared = Postservice()

   // let DB_REF = Database.database().reference()

    let DB_REF = Database.database(url: "https://ioscwnibm-default-rtdb.asia-southeast1.firebasedatabase.app").reference()

    func fetchAllItems() {
            DB_REF.child("extype1").observe(.childAdded) { (snapshot) in
                fetchSingleitem(id: snapshot.key) { todoItem in
                    print(todoItem as Any)
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
    
    
    
    // Excrise For Normal weight
    func fetchAllItemsnormalcat() {
            DB_REF.child("extype2").observe(.childAdded) { (snapshot) in
                fetchSingleitem(id: snapshot.key) { todoItem in
                    print(todoItem as Any)
                }
            }
        }
    
    func fetchSingleitemnormalcat(id: String, completion: @escaping (TodoItem?) -> Void) {
           DB_REF.child("extype2").child(id).observeSingleEvent(of: .value) { (snapshot) in
               guard let dictionary = snapshot.value as? [String: Any] else {
                   completion(nil)
                   return
               }
               
               let todoItem = TodoItem(KeyId: id, dictonary: dictionary)
               completion(todoItem)
           }
       }
    
    
    // Excrise For Over weight
    func fetchAllItemsovercat() {
            DB_REF.child("extype3").observe(.childAdded) { (snapshot) in
                fetchSingleitem(id: snapshot.key) { todoItem in
                    print(todoItem as Any)
                }
            }
        }
    
    func fetchSingleitemovercat(id: String, completion: @escaping (TodoItem?) -> Void) {
           DB_REF.child("extype3").child(id).observeSingleEvent(of: .value) { (snapshot) in
               guard let dictionary = snapshot.value as? [String: Any] else {
                   completion(nil)
                   return
               }
               
               let todoItem = TodoItem(KeyId: id, dictonary: dictionary)
               completion(todoItem)
           }
       }
    
    // Meal
    func fetchAllmeal() {
            DB_REF.child("meal").observe(.childAdded) { (snapshot) in
                fetchSingleitem(id: snapshot.key) { todoItem in
                    print(todoItem as Any)
                }
            }
        }
    
    func fetchSinglemeal(id: String, completion: @escaping (TodoMeal?) -> Void) {
           DB_REF.child("meal").child(id).observeSingleEvent(of: .value) { (snapshot) in
               guard let dictionary = snapshot.value as? [String: Any] else {
                   completion(nil)
                   return
               }
               
               let todoItem = TodoMeal(KeyId: id, dictonary: dictionary)
               completion(todoItem)
           }
       }
}
