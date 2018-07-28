//
//  TodoPresenter.swift
//  Next
//
//  Created by willian.policiano on 26/07/2018.
//  Copyright © 2018 Movile. All rights reserved.
//

import Foundation

protocol TodoPresentationLogic {
    func getItems()
}

final class TodoPresenter {
    let viewController: TodoDisplayLogic

    init(viewController: TodoDisplayLogic) {
        self.viewController = viewController
    }
}

extension TodoPresenter: TodoPresentationLogic {
    func getItems() {
        
    }
}
