//
//  RootViewController.swift
//  MakingStuffShowcase
//
//  Created by Kevin Conner on 10/6/16.
//  Copyright © 2016 WillowTree, Inc. All rights reserved.
//

import UIKit

final class RootViewController: UIViewController {

    private enum Segue: String {
        case embedList
        case embedDetail
    }

    @IBOutlet private var listContainerLeft: NSLayoutConstraint!
    @IBOutlet private var listContainerWidth: NSLayoutConstraint!

    private var list: ListViewController!
    private var detail: DetailViewController!

    // MARK: Helpers

    private func hideList(animated: Bool) {
        list.view.resignFirstResponder()
        listContainerLeft.constant = -listContainerWidth.constant

        func animate() {
            view.layoutIfNeeded()
        }

        func complete(finished: Bool) {
            if finished {
                detail.view.becomeFirstResponder()
            }
        }

        if animated {
            UIView.animate(withDuration: 0.25, delay: 0.0, options: .beginFromCurrentState, animations: animate, completion: complete)
        } else {
            animate()
            complete(finished: true)
        }
    }
    
    private func showList(animated: Bool) {
        detail.view.resignFirstResponder()
        listContainerLeft.constant = 0.0

        func animate() {
            view.layoutIfNeeded()
        }

        func complete(finished: Bool) {
            if finished {
                list.view.becomeFirstResponder()
            }
        }

        if animated {
            UIView.animate(withDuration: 0.25, delay: 0.0, options: .beginFromCurrentState, animations: animate, completion: complete)
        } else {
            animate()
            complete(finished: true)
        }
    }

    @IBAction func didSwipeRight(_ sender: Any) {
        showList(animated: true)
    }

    @IBAction func didSwipeLeft(_ sender: Any) {
        hideList(animated: true)
    }

    // MARK: UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()

        hideList(animated: false)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier.flatMap(Segue.init) {
        case .embedList?:
            list = segue.destination as! ListViewController
        case .embedDetail?:
            detail = segue.destination as! DetailViewController
        case nil:
            break
        }
    }

}
