//
//  TextFieldView.swift
//  ChatBot
//
//  Created by 石橋玲那 on 2020/09/13.
//  Copyright © 2020 t.fujii. All rights reserved.
//

import SwiftUI

struct TextFieldView: View {
    @State private var text = ""
    @EnvironmentObject var messageDataList :MessageDataList
    var body: some View {
        HStack{
            TextField("文字を入力", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.default)
            
            Button(action: {
                self.messageDataList.listData.append(
                    MessageData(message: text, speaker: .me)
                )
                Bot.apiRequest(
                    text: self.text,
                    responseData: {data in
                        self.messageDataList.listData.append(
                            MessageData(
                                message: data,
                                speaker: .customer
                            )
                        )
                    }
                )
                self.text = ""
            }, label: {
                Image(systemName: "arrow.up.circle.fill")
                    .resizable()
                    .frame(width: 30, height: 30, alignment: .center)
                    .accentColor(/*@START_MENU_TOKEN@*/.green/*@END_MENU_TOKEN@*/)
                    
                    
            })
            
        }.padding(.all, 8)
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var data: MessageDataList {
        let list = MessageDataList()
        list.listData = testMessageDatas
        return list
    }
    static var previews: some View {
        TextFieldView()
            .environmentObject(data)
            .previewLayout(.fixed(width: 375, height: 100))
    }
}

