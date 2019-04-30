//
//  Quote.swift
//  Pensamentos
//
//  Created by Leandro Roberto Medeiros on 29/04/19.
//  Copyright © 2019 Leandro Roberto Medeiros. All rights reserved.
//

import Foundation


struct Quote: Codable {
    
    let quote: String
    let author: String
    let image: String
    
    var quoteFormatted: String {
        return " ❝" + quote + "❞ "
    }
    
    var authorFormatted:String {
        return "- " + author + " -"
    }
    
}
