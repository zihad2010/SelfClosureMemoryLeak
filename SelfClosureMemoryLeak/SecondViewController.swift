//
//  SecondViewController.swift
//  SelfClosureMemoryLeak
//
//  Created by Steve JobsOne on 4/22/20.
//  Copyright © 2020 Steve JobsOne. All rights reserved.
//

//

import UIKit

class SecondViewController: UIViewController {

    //https://www.youtube.com/watch?v=7BpLU9uhLCg
    let tutorialLink = "https://medium.com/@hari.keerthipati/self-closure-memory-leak-fixes-using-weak-and-unowned-658e2cebec2"
    
    @IBOutlet weak var infoLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        infoLabel.text = tutorialLink
        NotificationCenter.default.addObserver(forName: NSNotification.Name("Go new Message"), object: nil, queue: .main) {[weak self] (notification) in
            self?.infoLabel.text = "Go new Message"
        }
    }
    
    deinit {
        print("=====I am vacating my space=====")
    }
    

}
