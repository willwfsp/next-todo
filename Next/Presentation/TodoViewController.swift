//
//  TodoViewController.swift
//  Next
//
//  Created by willian.policiano on 26/07/2018.
//  Copyright © 2018 Movile. All rights reserved.
//

import UIKit

struct ItemViewModel {
    let title: String
    let isDone: Bool
}

protocol TodoDisplayLogic {
    func displayItems(viewModel: [ItemViewModel])
}

final class TodoViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!

    

    var items: [ItemViewModel] = [] {
        didSet { tableView.reloadData() }
    }
}

extension TodoViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemTableViewCell")!
        let item = items[indexPath.row]
        cell.textLabel?.text = item.title

        return cell
    }
}

extension TodoViewController: TodoDisplayLogic {
    func displayItems(viewModel: [ItemViewModel]) {
        items = viewModel
    }
}
