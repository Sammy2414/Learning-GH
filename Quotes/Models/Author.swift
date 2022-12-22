//
//  Author.swift
//  Quotes
//
//  Created by Sammy Orozco on 12/21/22.
//

import Foundation


class  Author: Decodable, Identifiable {
    
    var id:UUID?
    var name:String
    var quotes:[String]
    var image:String
    
   
    
}
