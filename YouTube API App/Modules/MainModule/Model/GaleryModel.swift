//
//  GaleryModel.swift
//  YouTube API App
//
//  Created by Irisandromeda on 06.01.2023.
//

import Foundation

struct Data {
    var list: [Gallery]
}

struct Gallery {
    let channelName: String
    let countOfSubscribers: Int
    let image: String
}
