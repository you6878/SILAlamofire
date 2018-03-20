//
//  PapagoDTO.swift
//  HowlPapago
//
//  Created by 유명식 on 2018. 3. 20..
//  Copyright © 2018년 유명식. All rights reserved.
//

import UIKit
import ObjectMapper

class PapagoDTO: Mappable {
    var message : Message?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        message <- map["message"]
    }
    class Message : Mappable{
        var result : Result?
        
        required init?(map: Map) {
            
        }
        
        func mapping(map: Map) {
            result <- map["result"]
        }
        class Result : Mappable{
            var translatedText : String?
            
            required init?(map: Map) {
                
            }
            
            func mapping(map: Map) {
                translatedText <- map["translatedText"]
            }
            
            
        }
        
        
        
    }
    
    

}
