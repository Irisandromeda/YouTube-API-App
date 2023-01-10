//
//  PlayView.swift
//  YouTube API App
//
//  Created by Irisandromeda on 10.01.2023.
//

import UIKit

class PlayView: UIView {
    
    private let gradientView = GradientView(from: .top, to: .bottom, startColor: #colorLiteral(red: 0.9563700557, green: 0.3671613932, blue: 0.6065070629, alpha: 1), endColor: #colorLiteral(red: 0.4706143737, green: 0.2126000226, blue: 0.9700291753, alpha: 1), cornerRadius: 25)
    private let playImage = UIImageView(imageName: "Play", contentMode: .scaleAspectFit)

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        addSubview(gradientView)
        gradientView.addSubview(playImage)
    }
    
    private func addConstraints() {
        self.translatesAutoresizingMaskIntoConstraints = false
        
        self.snp.makeConstraints { make in
            make.width.height.equalTo(50)
        }
        
        gradientView.translatesAutoresizingMaskIntoConstraints = false
        
        gradientView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        playImage.translatesAutoresizingMaskIntoConstraints = false
        
        playImage.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
            make.width.equalTo(25)
            make.height.equalTo(20)
        }
    }
    
}
