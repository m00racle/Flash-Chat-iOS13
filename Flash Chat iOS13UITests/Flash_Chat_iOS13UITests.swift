//
//  Flash_Chat_iOS13UITests.swift
//  Flash Chat iOS13UITests
//
//  Created by Yanuar Heru on 18/04/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import XCTest

class Flash_Chat_iOS13UITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        
        //launch the app
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testPressLoginButtonGoesToLoginPage() throws {
        // prepare:
        let app = XCUIApplication()
        // action:
        app.buttons["Log In"].tap()
        // assert:
        XCTAssertTrue(app.textFields["Email"].exists)
        XCTAssertTrue(app.secureTextFields["Password"].exists)
        XCTAssertTrue(app/*@START_MENU_TOKEN@*/.staticTexts["Log In"]/*[[".buttons[\"Log In\"].staticTexts[\"Log In\"]",".staticTexts[\"Log In\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.exists)
    }
    
    func testPressRegisterButtonGoesToRegisterPage() throws {
        
        let app = XCUIApplication()
        let registerStaticText = app/*@START_MENU_TOKEN@*/.staticTexts["Register"]/*[[".buttons[\"Register\"].staticTexts[\"Register\"]",".staticTexts[\"Register\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        
        registerStaticText.tap()
        
        //assert
        XCTAssertTrue(app.textFields["Email"].exists)
        XCTAssertTrue(app.secureTextFields["Password"].exists)
        XCTAssertTrue(app.buttons["Register"].exists)
    }

}