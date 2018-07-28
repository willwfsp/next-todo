//
//  TodoConfigurator.swift
//  Next
//
//  Created by willian.policiano on 28/07/2018.
//  Copyright © 2018 Movile. All rights reserved.
//

import UIKit

class TodoConfigurator {
    func resolve() -> TodoViewController? {
        let storyboard = UIStoryboard(name: "Todo", bundle: nil)
        guard let viewController = storyboard.instantiateViewController(withIdentifier: "TodoViewController") as? TodoViewController else {
            return .none
        }

        let dataStore = TodoApiDataStore()
        let presenter = TodoPresenter(viewController: viewController, dataStore: dataStore)
        viewController.presenter = presenter

        return viewController
    }
}
