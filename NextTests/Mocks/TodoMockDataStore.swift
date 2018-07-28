//
//  TodoMockDataStore.swift
//  NextTests
//
//  Created by willian.policiano on 28/07/2018.
//  Copyright © 2018 Movile. All rights reserved.
//

import Foundation
@testable import Next

class TodoMockDataStore: TodoDataStoreProtocol {
    func getItems(completion: (Result<[TodoItem]>) -> Void) {
        let items = [
            TodoItem(title: "Comprar o rango", creationDate: "2018-07-22T19:21", lastUpdateDate: "2018-07-22T19:20", isDone: "S"),
            TodoItem(title: "Movile Next", creationDate: "2018-07-22T19:22", lastUpdateDate: "2018-07-22T19:20", isDone: "S"),
            TodoItem(title: "Netflix", creationDate: "2018-07-22T19:23", lastUpdateDate: "2018-07-22T19:20", isDone: "N"),
            TodoItem(title: "Escovar o gato", creationDate: "2018-07-22T19:24", lastUpdateDate: "2018-07-22T19:20", isDone: "N")
        ]

        completion(.success(items))
    }
}
