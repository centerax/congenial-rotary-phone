//
//  testciUITests.swift
//  testciUITests
//
//  Created by cobas on 12/6/16.
//  Copyright © 2016 Ebizmarts. All rights reserved.
//

import XCTest

class testciUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        if #available(iOS 9.0, *) {
            XCUIApplication().launch()
        } else {
            // Fallback on earlier versions
        }

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let app = XCUIApplication()
        XCUIDevice.shared().orientation = .faceUp
        app.buttons["Tap me!"].tap()
        let nextGame = app.buttons["Tap me!"]
        let exists = NSPredicate(format: "exists == true")
        expectation(for: exists, evaluatedWith: nextGame, handler: nil)
        waitForExpectations(timeout: 5, handler: nil)
        XCTAssert(nextGame.exists)
        
        
       
    }
    
}
