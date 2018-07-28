//
//  TodoPresenter.swift
//  Next
//
//  Created by willian.policiano on 26/07/2018.
//  Copyright © 2018 Movile. All rights reserved.
//

import Foundation

protocol TodoPresentationLogic: AnyObject {
    func getItems()
}

final class TodoPresenter {
    let viewController: TodoDisplayLogic
    let dataStore: TodoDataStoreProtocol

    init(viewController: TodoDisplayLogic, dataStore: TodoDataStoreProtocol) {
        self.viewController = viewController
        self.dataStore = dataStore
    }
}

extension TodoPresenter: TodoPresentationLogic {
    func getItems() {
        dataStore.getItems { [weak self] in
            switch $0 {
            case .success(let items):
                let viewModel = items.map { $0.itemViewModel }
                self?.viewController.displayItems(viewModel: viewModel)
            case .failure:
                break
            }
        }
    }
}

fileprivate extension TodoItem {
    var itemViewModel: ItemViewModel {
        let isDone = self.isDone == "S" ? "Concluído" : ""
        let title = self.title.lowercased()

        return ItemViewModel(title: title, isDone: isDone)
    }
}

