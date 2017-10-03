//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    var favoriteFlavorsOfIceCream = [
        "Joe" : "Peanut Butter and Chocolate",
        "Tim" : "Natural Vanilla",
        "Sophie" : "Mexican Chocolate",
        "Deniz" : "Natural Vanilla",
        "Tom" : "Mexican Chocolate",
        "Jim" : "Natural Vanilla",
        "Susan" : "Cookies 'N' Cream"
    ]
    
    
    
    
    // 2.
    func names(forFlavor:String) -> [String] {
        var temStrs:[String] = []
        for (name, flavor) in favoriteFlavorsOfIceCream {
            if (flavor == forFlavor) {
                temStrs.append(name)
            }
        }
        return temStrs
    }
    
    
    
    
    
    // 3.
    func count(forFlavor:String) -> Int {
        var tempc:Int = 0
        for (_, flavor) in favoriteFlavorsOfIceCream {
            if (flavor == forFlavor) {
                tempc += 1
            }
        }
        return tempc
    }
    
    // 4.
   
    func flavor(forPerson:String) -> String? {
        return favoriteFlavorsOfIceCream[forPerson]
    }
    
    // 5.
   
    func replace(flavor:String,forPerson:String)->Bool {
        if let tempF = favoriteFlavorsOfIceCream[forPerson] {
            if (tempF == flavor) {
                
                return false
            } else {
                favoriteFlavorsOfIceCream[forPerson] = flavor
                return true
            }
        } else {
            return false
        }
    }
    
    // 6.
    
    func remove(person:String) -> Bool {
        if let _ = favoriteFlavorsOfIceCream.removeValue(forKey: person) {
            return true
        } else {
            return false
        }
    }
    
    // 7.
    
    func numberOfAttendees() -> Int {
        return favoriteFlavorsOfIceCream.count
    }
    
    // 8.
    
    func add(person:String,withFlavor:String) -> Bool {
        if let _ = favoriteFlavorsOfIceCream[person] {
            return false
        } else {
        favoriteFlavorsOfIceCream[person] = withFlavor
            return true
        }
    }
    
    // 9.
    
    func attendeeList() -> String {
        var tempStr:String=""
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        for (index,name) in allNames.enumerated() {
            if let temp = flavor(forPerson:name) {
                tempStr += "\(name) likes \(temp)"
                if (index < allNames.count - 1) {
                    tempStr += "\n"
                }
            }
        }
        return tempStr
    }
    
    
    

}
