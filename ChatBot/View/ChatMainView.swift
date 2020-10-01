//
//  ChatMainView.swift
//  ChatBot
//
//  Created by t.fujii on 2020/09/04.
//  Copyright © 2020 t.fujii. All rights reserved.
//

import SwiftUI

struct ChatMainView: View {
    @EnvironmentObject var messageDatas: MessageDataList
    var body: some View {
        ScrollView {
            ForEach(self.messageDatas.listData) { message in
                MessageView(messageData: message)
            }
        }.onAppear(perform: {})
    }
}

struct ChatMainView_Previews: PreviewProvider {
    static var data: MessageDataList {
        let list = MessageDataList()
        list.listData = testMessageDatas
        return list
    }
    static var previews: some View {
        ChatMainView().environmentObject(data)
    }
}
