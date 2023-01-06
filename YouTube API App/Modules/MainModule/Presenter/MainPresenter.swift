//
//  MainPresenter.swift
//  YouTube API App
//
//  Created by Irisandromeda on 06.01.2023.
//

import UIKit

    //MARK: Input

protocol MainViewProtocol: AnyObject {
    func success()
    func failure(error: Error)
}

    //MARK: Output

protocol MainPresenterProtocol: AnyObject {
    init(view: MainViewProtocol)
}

    //MARK: Presenter

class MainPresenter: MainPresenterProtocol {
    weak var view: MainViewProtocol?
    
    required init(view: MainViewProtocol) {
        self.view = view
    }
    
}
