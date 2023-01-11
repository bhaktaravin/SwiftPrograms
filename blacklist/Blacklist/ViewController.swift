//
//  ViewController.swift
//  Blacklist
//
//  Created by Ravin Bhakta on 1/10/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ClickToAdd(_ sender: UIButton) {
        performSegue(withIdentifier: "toAddView", sender: nil)
    }
    

}

