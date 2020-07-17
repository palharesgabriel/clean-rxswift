//
//  CharactersViewController.swift
//  RickAppMorty
//
//  Created by Gabriel Palhares on 07/07/20.
//  Copyright © 2020 Gabriel Palhares. All rights reserved.
//

import UIKit

class CharactersViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .red
        let service = NetworkService()
        let worker = CharacterWorker(with: service)
        worker.fetchChars { (result) in
            debugPrint(result!)
        }
    }

}
