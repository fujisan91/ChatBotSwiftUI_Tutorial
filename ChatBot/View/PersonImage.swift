//
//  PersonImage.swift
//  ChatBot
//
//  Created by t.fujii on 2020/10/01.
//  Copyright © 2020 t.fujii. All rights reserved.
//

import SwiftUI

struct PersonImage: View {
    var body: some View {
        Image(systemName: "person.circle")
            .frame(width: 10, height: 10)
    }
}

struct PersonImage_Previews: PreviewProvider {
    static var previews: some View {
        PersonImage()
    }
}
