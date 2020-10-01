//
//  Response.swift
//  ChatBot
//
//  Created by reina.ishibashi on 2020/09/29.
//  Copyright © 2020 t.fujii. All rights reserved.
//

import SwiftUI

struct Response: Codable {
    
    let commandId: String?

    let commandName: String?

    let text: String?

    let type: String?

    let mood: Double?

    let negaposi: Double?

    let negaposiList: [NegaposiList]?

    let emotion: Emotion?

    let emotionList: [EmotionList]?

    let wordList: [WordList]?

    let art: String?

    let org: String?

    let psn: String?

    let loc: String?

    let dat: String?

    let tim: String?
    
}

