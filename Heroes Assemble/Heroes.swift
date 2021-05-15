//
//  Heroes.swift
//  Heroes Assemble
//
//  Created by Nipuni Obe on 5/15/21.
//

import Foundation
import Alamofire
import SwiftyJSON

class Heroes {

        struct HeroData {
            var name: String
            var id: String
        }
        
        var heroesArray: [HeroData] = []
    
    //put inside a for loop
    // for i in rnage 1-750
        
    for i in 1...750{
        var apiURL = "https://superheroapi.com/api/3876294599135188/\(index)"

    }
        
        func getHeroes(completed: @escaping () -> () ) {
            AF.request(apiURL).responseJSON { response in
                switch response.result {
                case .success(let value):
                    let json = JSON(value)
                     let name = json["name"].stringValue
                    print(name)
                let id = json["id"].stringValue
                        self.heroesArray.append(HeroData(name: name, id: id))
                case .failure(let error):
                    print("ERROR: \(error.localizedDescription) failed to get data from url \(self.apiURL)")
                }
                completed()
            }
        }

}
