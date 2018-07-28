//
//  TodoApiDataStore.swift
//  Next
//
//  Created by willian.policiano on 28/07/2018.
//  Copyright © 2018 Movile. All rights reserved.
//

import Foundation

class TodoApiDataStore: TodoDataStoreProtocol {
    func getItems(completion: (Result<[TodoItem]>) -> Void) {
        // faz de conta que tem uma URL request
        completion(.success([]))
    }
}
