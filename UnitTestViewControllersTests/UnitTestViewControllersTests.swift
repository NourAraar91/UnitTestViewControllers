//
//  UnitTestViewControllersTests.swift
//  UnitTestViewControllersTests
//
//  Created by Nour Araar on 9/19/21.
//

import XCTest
@testable import UnitTestViewControllers

class UnitTestViewControllersTests: XCTestCase {
    
    func test_loadingStoaryboardBasedViewController() {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sut: StoryboardViewController = storyboard.instantiateViewController(
        identifier: String(describing: StoryboardViewController.self))
        sut.loadViewIfNeeded()
        XCTAssertNotNil(sut.label)
    }
    
    func test_loadingXIBBasedViewController() {
        let sut = XIBViewController()
        sut.loadViewIfNeeded()
        XCTAssertNotNil(sut.label)
    }
    
}
