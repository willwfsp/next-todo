//
//  TodoDataStoreProtocol.swift
//  Next
//
//  Created by willian.policiano on 28/07/2018.
//  Copyright © 2018 Movile. All rights reserved.
//

import Foundation

protocol TodoDataStoreProtocol {
    func getItems(completion: (Result<[TodoItem]>) -> Void)
}
