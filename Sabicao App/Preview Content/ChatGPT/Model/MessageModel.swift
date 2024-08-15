//
//  MessageModel.swift
//  Sabicao App
//
//  Created by Cristino Junior on 8/11/24.
//

import Foundation

struct MessageModel: Identifiable {
    var id = UUID()
    var content: String
    var isUser: Bool
}
