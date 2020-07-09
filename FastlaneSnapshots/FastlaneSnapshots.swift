//
//  FastlaneSnapshots.swift
//  FastlaneSnapshots
//
//  Created by Gabriel Palhares on 09/07/20.
//  Copyright © 2020 Gabriel Palhares. All rights reserved.
//

import XCTest

class FastlaneSnapshots: XCTestCase {

    override func setUp() {
        super.setUp()
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testSnapshot() {
        // record the flow through screens that must be saved
        
        // snapshot("1Launch")
        // action
    }
    
}
