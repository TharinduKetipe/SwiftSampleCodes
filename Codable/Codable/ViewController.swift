//
//  ViewController.swift
//  Codable
//
//  Created by Tharindu Ketipearachchi on 2022-10-02.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        NetworkManager().getMedia()
    }
}

