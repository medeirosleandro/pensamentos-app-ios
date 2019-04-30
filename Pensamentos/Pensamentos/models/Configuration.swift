//
//  Configuration.swift
//  Pensamentos
//
//  Created by Leandro Roberto Medeiros on 29/04/19.
//  Copyright © 2019 Leandro Roberto Medeiros. All rights reserved.
//

import Foundation

enum userDefaultsKeys: String {
    case timeInterval = "timeInterval"
    case colorScheme = "colorScheme"
    case autoRefresh = "autoRefresh"
}

class Configuration {
    
    let defaults = UserDefaults.standard
    static var shared: Configuration = Configuration()
    
    var timeInterval: Double {
        get{
            return defaults.double(forKey: userDefaultsKeys.timeInterval.rawValue)
        }
        set{
            defaults.set(newValue,forKey: userDefaultsKeys.timeInterval.rawValue)
        }
    }
    
    var colorScheme: Int {
        get{
            return defaults.integer(forKey: userDefaultsKeys.colorScheme.rawValue)
        }
        set{
            defaults.set(newValue,forKey: userDefaultsKeys.colorScheme.rawValue)
        }
    }
    
    var autoRefresh: Bool {
        get{
            return defaults.bool(forKey: userDefaultsKeys.autoRefresh.rawValue)
        }
        set{
            defaults.set(newValue,forKey: userDefaultsKeys.autoRefresh.rawValue)
        }
    }
    
    private init(){
        
        if defaults.double(forKey: userDefaultsKeys.timeInterval.rawValue) == 0 {
           defaults.set(8.0,forKey: userDefaultsKeys.timeInterval.rawValue)
        }
        
    }
}
