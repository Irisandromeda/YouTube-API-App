//
//  GalleryViewController.swift
//  YouTube API App
//
//  Created by Irisandromeda on 07.01.2023.
//

import UIKit
import SnapKit

class GalleryViewController: UIViewController {
    
    let galleryImage = UIImageView(contentMode: .scaleAspectFit)
    let channelName = UILabel(text: "Eminem Music", font: .systemFont(ofSize: 16), textColor: #colorLiteral(red: 0.2834452093, green: 0.2834451795, blue: 0.2834452093, alpha: 1), textAlignment: .left)
    let countOfSubscribers = UILabel(text: "36 923 962 подписчика", font: .systemFont(ofSize: 10), textColor: #colorLiteral(red: 0.6782838106, green: 0.6782838106, blue: 0.6782838106, alpha: 1), textAlignment: .left)
    
    override func loadView() {
        super.loadView()
        
        setupMainView()
        setupSubviews()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addConstraints()
    }
    
    private func setupMainView() {
        view.backgroundColor = .white
        view.addSubview(galleryImage)
        view.layer.cornerRadius = 4
    }
    
}

    //MARK: Setup Views

extension GalleryViewController {
    private func setupSubviews() {
        galleryImage.image = UIImage(named: "lxst_cxntury")
    }
}

    //MARK: AutoLayout

extension GalleryViewController {
    private func addConstraints() {
        galleryImage.translatesAutoresizingMaskIntoConstraints = false

        galleryImage.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        let labelStackView = UIStackView(arrangedSubviews: [channelName,countOfSubscribers], axis: .vertical, spacing: 4)
        
        labelStackView.translatesAutoresizingMaskIntoConstraints = false
        
        galleryImage.addSubview(labelStackView)
        
        labelStackView.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.centerY.equalToSuperview()
            make.leading.equalToSuperview().offset(10)
            make.trailing.equalToSuperview().offset(-10)
        }
    }
}
