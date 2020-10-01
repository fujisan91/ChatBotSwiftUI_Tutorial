//
//  MessageDataList.swift
//  ChatBot
//
//  Created by t.fujii on 2020/09/21.
//  Copyright © 2020 t.fujii. All rights reserved.
//

import SwiftUI
import Combine

class MessageDataList: ObservableObject {
    @Published var listData: [MessageData] = []
}
