//
//  TodoViewControllerTests.swift
//  NextTests
//
//  Created by willian.policiano on 28/07/2018.
//  Copyright © 2018 Movile. All rights reserved.
//

import XCTest
@testable import Next

class TodoViewControllerTests: XCTestCase {
    var sut: TodoViewController!

    override func setUp() {
        let storyboard = UIStoryboard(name: "Todo", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "TodoViewController")

        sut = viewController as! TodoViewController

        let presenter = TodoPresenterSpy()
        sut.presenter = presenter

    }

    // MARK: - Spies

    class TodoPresenterSpy: TodoPresentationLogic {
        var getItemsIsCalled = false

        func getItems() {
            getItemsIsCalled = true
        }
    }

    // MARK: - View -> Presenter Relationship Tests

    func testWhenViewDidLoadThePresenterShoudGetItems() {

        // Given the presenter is a TodoPresenterSpy
        let presenter = sut.presenter as! TodoPresenterSpy

        // When the sut is started its lifecycle
        _ = sut.view

        // Then the presenter should call getItems
        XCTAssertTrue(presenter.getItemsIsCalled)
    }

    // MARK: - Test outlet connections

    func testIfTableViewIsConnectToAnOutlet() {
        // Given
        _ = sut.view

        // When
        let tableView = sut.tableView

        // Then
        XCTAssertNotNil(tableView)
    }

    // MARK: - TODO testes
    /*
     - Certificar-se que a tableView está sendo ocultada quando o array é vazio
     - ...
     */

}

