//
//  TJHPreferences.swift
//  ios-info
//
//  Created by Thomas Holbrook on 15/05/2018.
//  Copyright © 2018 Thomas Holbrook. All rights reserved.
//

import Foundation

class Preferences {
    
    class func getPreference(entry: String) -> String {
        
        var result = "Not Found"
        
        if let managedConf = UserDefaults.standard.object(forKey: "com.apple.configuration.managed") as? [String:Any?] {
            result = (managedConf[entry] as? String)!
        }
        return result
    }
    
}
