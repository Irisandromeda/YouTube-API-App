//
//  MainViewController.swift
//  YouTube API App
//
//  Created by Irisandromeda on 06.01.2023.
//

import UIKit

class MainViewController: UIViewController {
    
    var presenter: MainPresenterProtocol!
    
    override func loadView() {
        super.loadView()
        
        setupMainView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    private func setupMainView() {
        view.backgroundColor = .white
    }
    
}

    //MARK: From Presenter

extension MainViewController: MainViewProtocol {
    func success() {
        
    }
    
    func failure(error: Error) {
        
    }
}
