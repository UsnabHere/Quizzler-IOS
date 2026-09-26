//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Usnab  on 01/08/26.
//  Copyright © 2026 The App Brewery. All rights reserved.
//

import Foundation


struct Question{
    var text : String
    var answer : String
    
    init(q : String , a : String){
        self.text = q
        self.answer = a
    }
}
