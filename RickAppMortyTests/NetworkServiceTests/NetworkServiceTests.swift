//
//  NetworkServiceTests.swift
//  RickAppMortyTests
//
//  Created by Gabriel Palhares on 16/07/20.
//  Copyright © 2020 Gabriel Palhares. All rights reserved.
//

import XCTest
@testable import RickAppMorty

class NetworkServiceTests: XCTestCase {

    override func setUp() {
        super.setUp()

    }

    func testCharsURLValidity() {
        let endpoint = CharacterTarget.fetchChars
        let url = endpoint.baseURL + endpoint.path
        XCTAssertEqual(url, "https://rickandmortyapi.com/api/character/")
    }

    func testAPICallSuccess() {

    }

    func testAPICallFailure() {

    }

    func testDecodeToModel() {

    }

    override func tearDown() {
        super.tearDown()
    }

}
