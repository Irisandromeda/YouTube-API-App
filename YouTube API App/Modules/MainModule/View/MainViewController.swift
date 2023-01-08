//
//  MainViewController.swift
//  YouTube API App
//
//  Created by Irisandromeda on 06.01.2023.
//

import UIKit
import SnapKit

class MainViewController: UIViewController {
    
    var presenter: MainPresenterProtocol!
    
    private let scrollView = UIScrollView()
    private let contentView = UIView()
    private let appLabel = UILabel(text: "YouTube API", font: .systemFont(ofSize: 34), textColor: .white, textAlignment: .left)
    
    let galleryPager = GalleryPageViewController()
    
    override func loadView() {
        super.loadView()
        
        addChild(galleryPager)
        
        setupMainView()
        setupSubviews()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addConstraints()
    }
    
    private func setupMainView() {
        view.backgroundColor = #colorLiteral(red: 0.1137254902, green: 0.1058823529, blue: 0.1490196078, alpha: 1)
        
        view.addSubview(scrollView)
    }
    
}

    //MARK: Setup Views

extension MainViewController {
    private func setupSubviews() {
        setupScrollView()
        setupContentView()
    }
    
    private func setupScrollView() {
        scrollView.showsVerticalScrollIndicator = false
        scrollView.showsHorizontalScrollIndicator = false
        
        scrollView.addSubview(contentView)
    }
    
    private func setupContentView() {
        contentView.backgroundColor = #colorLiteral(red: 0.1137254902, green: 0.1058823529, blue: 0.1490196078, alpha: 1)
        
        contentView.addSubview(appLabel)
        contentView.addSubview(galleryPager.view)
    }
}

    //MARK: AutoLayout

extension MainViewController {
    private func addConstraints() {
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        scrollView.snp.makeConstraints { make in
            make.edges.equalTo(view.safeAreaLayoutGuide)
        }
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.width.height.equalToSuperview()
        }
        
        appLabel.translatesAutoresizingMaskIntoConstraints = false
        
        appLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(51)
            make.leading.equalToSuperview().offset(23)
        }
        
        galleryPager.view.translatesAutoresizingMaskIntoConstraints = false
        
        galleryPager.view.snp.makeConstraints { make in
            make.top.equalTo(appLabel).offset(80)
            make.leading.equalToSuperview().offset(18)
            make.trailing.equalToSuperview().offset(-18)
            make.height.equalTo(240)
        }
    }
}

    //MARK: From Presenter

extension MainViewController: MainViewProtocol {
    func success() {
        
    }
    
    func failure(error: Error) {
        
    }
}
