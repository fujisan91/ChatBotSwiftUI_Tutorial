//
//  MessageData.swift
//  ChatBot
//
//  Created by t.fujii on 2020/09/02.
//  Copyright © 2020 t.fujii. All rights reserved.
//

import SwiftUI

/// 発言者のタイプ
enum SpeakerType {
    // 自分自身
    case me
    // カスタマー
    case customer
}

struct MessageData: Identifiable {
    /// UUID
    var id = UUID()
    /// メッセージ内容
    var message = ""
    /// 発言者
    var speaker:SpeakerType
}

var testMessageDatas: [MessageData] {
    let data: [MessageData] = [
        .init(message: "助けてくださaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaい", speaker: .me),
        .init(message: "どうしましたか？", speaker: .customer),
        .init(message: "どうしましたか？", speaker: .customer),
        .init(message: "どうしましたか？", speaker: .customer),
        .init(message: "どうしましたか？", speaker: .customer),
        .init(message: "どうしましたか？", speaker: .customer),
        .init(message: "どうしましたか？", speaker: .customer),
        .init(message: "どうしましたか？", speaker: .customer),
        .init(message: "どうしましたか？", speaker: .customer),
        .init(message: "どうしましたか？", speaker: .customer),
        .init(message: "どうしましたか？", speaker: .customer),
        .init(message: "どうしましたか？", speaker: .customer),
        .init(message: "どうしましたか？", speaker: .customer),
        .init(message: "どうしましたか？", speaker: .customer),
        .init(message: "どうしましたか？", speaker: .customer),
        .init(message: "😭", speaker: .me),
    ]
    return data
}

struct MessageData_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
