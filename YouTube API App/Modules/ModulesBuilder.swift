//
//  ModulesBuilder.swift
//  YouTube API App
//
//  Created by Irisandromeda on 06.01.2023.
//

import UIKit

protocol ModulesBuilderProtocol {
    static func createMainModule() -> UIViewController
}

class ModulesBuilder: ModulesBuilderProtocol {
    
    static func createMainModule() -> UIViewController {
        let view = MainViewController()
        let presenter = MainPresenter(view: view)
        view.presenter = presenter
        
        return view
    }
}
