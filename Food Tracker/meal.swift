//
//  meal.swift
//  Food Tracker
//
//  Created by Jose Pena on 12/21/16.
//  Copyright © 2016 Jose Pena. All rights reserved.
//

import UIKit

class Meal {
    //MARK: Properties
    var name: String
    var photo: UIImage?
    var rating: Int
    
    
    
    init? (name :String, photo: UIImage?, rating: Int) {
        // Name is empty
        guard !name.isEmpty else {
            return nil
        }
        
        // Rating is out of bound
        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }
        
        
        self.name = name
        self.photo = photo
        self.rating = rating
        

    }
}
