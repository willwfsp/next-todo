//
//  TodoPresenterTests.swift
//  NextTests
//
//  Created by willian.policiano on 28/07/2018.
//  Copyright © 2018 Movile. All rights reserved.
//

import XCTest
@testable import Next

class TodoPresenterTests: XCTestCase {
    var sut: TodoPresenter!

    override func setUp() {
        let viewController = TodoViewControllerSpy()
        let dataStore = TodoMockDataStore()
        sut = TodoPresenter(viewController: viewController, dataStore: dataStore)
    }

    // MARK: - Spies

    class TodoViewControllerSpy: TodoDisplayLogic {
        var viewModel: [ItemViewModel]? = nil

        func displayItems(viewModel: [ItemViewModel]) {
            self.viewModel = viewModel
        }
    }

    // MARK: - Presenter -> View Relationship Tests

    func testGetItemsShouldSendSomeViewModelToViewController() {
        // Given
        let viewController = sut.viewController as! TodoViewControllerSpy

        // When
        sut.getItems()

        // Then
        XCTAssertNotNil(viewController.viewModel)
    }

    // MARK: - TODO testes
    /*
     - Certificar-se que o TodoItem está sendo parceado corretamente para o ItemViewModel
     - Certificar-se que o presenter está mandado um Erro apropriado para a viewController
     - ...
     */
}

