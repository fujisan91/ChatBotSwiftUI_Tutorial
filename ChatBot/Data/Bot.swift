//
//  Bot.swift
//  ChatBot
//
//  Created by 石橋玲那 on 2020/09/15.
//  Copyright © 2020 t.fujii. All rights reserved.
//

import SwiftUI
import Alamofire

struct BotRequestParam: Encodable {
    let appkey: String
    let text: String
}

class Bot {
    // NOTE: Uncommment following two lines for use in a Playground
    // import PlaygroundSupport
    // PlaygroundPage.current.needsIndefiniteExecution = true
    
    class func apiRequest(text: String, responseData: @escaping(String) -> Void){
        let urlString = "https://app.cotogoto.ai/webapi/noby.json"
        let requestParam = BotRequestParam(appkey: Contents.apiKey, text: text)
        AF.request(urlString, method: .get, parameters: requestParam).responseJSON { response in
            switch response.result {
            case .success:
                guard let decodeData = jsonDecode(data: response.data) else {
                    return
                }
                if let text = decodeData.text {
                    responseData(text)
                }
            case .failure:
                print("request error")
            }
        }
    }
    
    /// JsonDataをResponseに変換する
    class func jsonDecode(data: Data?) -> Response? {
        guard let data = data else {
            print("Response Data Not Found")
            return nil
        }
        let jsonDecoder = JSONDecoder()
        do {
            let response = try jsonDecoder.decode(Response.self, from: data)
            return response
        } catch {
            print("Response Json Decode Error!!")
        }
        return nil
    }
}

extension String {
    
    var urlEncoded: String {
        // 半角英数字 + "/?-._~" のキャラクタセットを定義
        let charset = CharacterSet.alphanumerics.union(.init(charactersIn: "/?-._~"))
        // 一度すべてのパーセントエンコードを除去(URLデコード)
        let removed = removingPercentEncoding ?? self
        // あらためてパーセントエンコードして返す
        return removed.addingPercentEncoding(withAllowedCharacters: charset) ?? removed
    }
}
