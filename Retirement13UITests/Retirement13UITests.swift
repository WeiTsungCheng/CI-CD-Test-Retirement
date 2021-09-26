//
//  Retirement13UITests.swift
//  Retirement13UITests
//
//  Created by WEI-TSUNG CHENG on 2021/8/10.
//

import XCTest

class Retirement13UITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        
        // Use recording to get started writing UI tests.
                // Use XCTAssert and related functions to verify your tests produce the correct results.
        
//        let app = XCUIApplication()
//        app.launch()
        
        XCTContext.runActivity(named: "screenshot") { (activity) in
            
            print("===========")
            print(activity)
        
            let app = XCUIApplication()
            app.launch()
            app.textFields["Monthly investments"].tap()
            
            let key = app/*@START_MENU_TOKEN@*/.keys["1"]/*[[".keyboards.keys[\"1\"]",".keys[\"1\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
            key.tap()
            
            let key2 = app/*@START_MENU_TOKEN@*/.keys["0"]/*[[".keyboards.keys[\"0\"]",".keys[\"0\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
            key2.tap()
            app.textFields["Your current age"].tap()
            
            let key3 = app/*@START_MENU_TOKEN@*/.keys["2"]/*[[".keyboards.keys[\"2\"]",".keys[\"2\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
            key3.tap()
            key2.tap()
            app.textFields["Your planned retirement age"].tap()
            
            let key4 = app/*@START_MENU_TOKEN@*/.keys["3"]/*[[".keyboards.keys[\"3\"]",".keys[\"3\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
            key4.tap()
            key2.tap()
            app.textFields["Average interest rate of investments"].tap()
            
            let key5 = app/*@START_MENU_TOKEN@*/.keys["4"]/*[[".keyboards.keys[\"4\"]",".keys[\"4\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
            key5.tap()
            key2.tap()
            app.textFields["Current savings"].tap()
            
            let key6 = app/*@START_MENU_TOKEN@*/.keys["5"]/*[[".keyboards.keys[\"5\"]",".keys[\"5\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
            key6.tap()
            key2.tap()
            app/*@START_MENU_TOKEN@*/.staticTexts["Calculate retirement amount"]/*[[".buttons[\"Calculate retirement amount\"].staticTexts[\"Calculate retirement amount\"]",".staticTexts[\"Calculate retirement amount\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
            
            let resultText = app.staticTexts.element(matching: .any, identifier: "resultLabel")
            
            let result = "If you save $10.0 every month for 10 years, and invest that money plus your current investment of $50.0 at a 40.0% anual interest rate, you will have $1.71527357954967e+19 by the time you are 30"

            XCTAssertEqual(resultText.label, result)
        }
    }

    func testLaunchPerformance() throws {
//        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
//            // This measures how long it takes to launch your application.
//            measure(metrics: [XCTApplicationLaunchMetric()]) {
//                XCUIApplication().launch()
//            }
//        }
    }
}
