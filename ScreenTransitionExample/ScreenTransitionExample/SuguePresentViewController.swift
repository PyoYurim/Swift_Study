//
//  SuguePresentViewController.swift
//  ScreenTransitionExample
//
//  Created by 표유림 on 2023/01/20.
//

import UIKit

class SuguePresentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.presentingViewController?
            .dismiss(animated: true, completion: nil)
    }
}
