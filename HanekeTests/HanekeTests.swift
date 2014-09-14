//
//  HanekeTests.swift
//  Haneke
//
//  Created by Hermes Pique on 9/9/14.
//  Copyright (c) 2014 Haneke. All rights reserved.
//

import XCTest
import Haneke

class HanekeTests: XCTestCase {

    func testErrorWithCode() {
        let code = 200
        let description = self.name
        let error = Haneke.errorWithCode(code, description:description)
        
        XCTAssertEqual(error.domain, Haneke.Domain)
        XCTAssertEqual(error.code, code)
        XCTAssertEqual(error.localizedDescription, description)
    }
    
    func testSharedCache() {
        let cache = Haneke.sharedCache
    }
    
}
