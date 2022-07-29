//
//  ViewController.swift
//  Flag
//
//  Created by Вячеслав Квашнин on 27.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var flagMain: Flag { return self.view as! Flag}
    
    override func loadView() {
        view = Flag(frame: UIScreen.main.bounds)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        flagMain.likeButton = {
            self.likeAction()
        }
    }

    func likeAction() {
        flagMain.actionButton()
    }
}
