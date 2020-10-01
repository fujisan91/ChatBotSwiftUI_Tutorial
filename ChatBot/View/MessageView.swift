//
//  MessageView.swift
//  ChatBot
//
//  Created by t.fujii on 2020/09/02.
//  Copyright © 2020 t.fujii. All rights reserved.
//

import SwiftUI

struct MessageView: View {
    @State var messageData: MessageData
    
    var body: some View {
        var edges: Edge.Set = .all
        var length: CGFloat = 0
        switch messageData.speaker {
        case .me:
            edges = .trailing
            length = 10.0
        case .customer:
            edges = .leading
            length = 10.0
        }
        return HStack(alignment: .top) {
            if messageData.speaker == .me {
                Spacer(minLength: 20)
            }
            Text(self.messageData.message)
                .font(.caption)
                .padding(.all, 10)
                .cornerRadius(10)
            if messageData.speaker == .customer {
                Spacer()
            }
        }
        .padding(.top, 10.0)
        .padding(edges, length)
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(messageData: .init(message: "Hello, World", speaker: .me))
            .previewLayout(.fixed(width: UIScreen.main.bounds.width, height: 100))
    }
}

struct MessageView2_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(messageData: .init(message: "Hello, World", speaker: .customer))
        .previewLayout(.fixed(width: UIScreen.main.bounds.width, height: 100))
    }
}
