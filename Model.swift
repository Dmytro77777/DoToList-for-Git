//
//  Model.swift
//  LIST
//
//  Created by Dima on 13/06/19.
//  Copyright © 2019 Dima. All rights reserved.
//

import Foundation

var ToDoItems: [[String: Any]] = {[["Name":"купить тачку", "выполнено": true],["Name":"купить книгу", "выполнено": false],["Name":"помыть пса", "выполнено": false]]}()


func addItem(nameItem: String, isCompleted: Bool = false){
    ToDoItems.append(["Name": nameItem, "выполнено": false])
    saveData()
}


func removeItem(at index: Int){
    ToDoItems.remove(at: index)
    saveData()
}


func moveItem(fromIndex: Int, toIndex: Int) {
    let from = ToDoItems[fromIndex]
    ToDoItems.remove(at: fromIndex)
    ToDoItems.insert(from, at: toIndex)
}


func changeState(at item: Int) -> Bool {
    ToDoItems[item]["выполнено"] = !(ToDoItems[item]["выполнено"] as! Bool)
    
    
    saveData()
    
    return ToDoItems[item]["выполнено"] as! Bool
    
    
    
    
}


func saveData(){
    UserDefaults.standard.set(ToDoItems, forKey: "ToDoDataKey")
    UserDefaults.standard.synchronize()
    
}



func loadData(){
   if let array = UserDefaults.standard.array(forKey: "ToDoDataKey") as? [[String: Any]] {
        ToDoItems = array
    } else {
        ToDoItems = []
    }
    
    
}
