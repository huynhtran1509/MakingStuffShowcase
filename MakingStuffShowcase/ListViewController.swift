//
//  ListViewController.swift
//  MakingStuffShowcase
//
//  Created by Kevin Conner on 10/27/16.
//  Copyright © 2016 WillowTree, Inc. All rights reserved.
//

import UIKit

final class ListViewController: UITableViewController {

    private enum Cell: String {
        case project
    }

    private let projectNames: [String] = ["This", "That", "The other"]

    // MARK: UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .darkGray
    }

    // MARK: UITableViewDataSource

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return projectNames.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cell.project.rawValue, for: indexPath)

        cell.textLabel?.text = projectNames[indexPath.row]

        return cell
    }

    // MARK: UITableViewDelegate

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // TODO
    }

    override func tableView(_ tableView: UITableView, didUpdateFocusIn context: UITableViewFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
        // TODO
    }

}
