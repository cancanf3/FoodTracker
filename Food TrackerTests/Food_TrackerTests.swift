//
//  Food_TrackerTests.swift
//  Food TrackerTests
//
//  Created by Jose Pena on 18/5/16.
//  Copyright © 2016 Jose Pena. All rights reserved.
//

import XCTest
@testable import Food_Tracker

class Food_TrackerTests: XCTestCase {
    
    //MARK: Meal Class Tests
    
    // Confirm that the meal initializer works properly
    func testMealInitializationSucceed () {
        let zeroTesting = Meal(name: "hayaca", photo: nil, rating: 0)
        XCTAssertNotNil(zeroTesting)
        
        let positiveRating = Meal(name: "Arepa", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRating)
    }
    
    func testMealInitializationFail () {
        let negativeRating = Meal(name: "hayaca", photo: nil, rating: -1)
        XCTAssertNil(negativeRating)
        
        let emptyString = Meal(name: "", photo: nil, rating: 3)
        XCTAssertNil(emptyString)
        
        
        let ratingexceed = Meal(name: "Hayaca", photo: nil, rating: 6)
        XCTAssertNil(ratingexceed)
    }
    
}
