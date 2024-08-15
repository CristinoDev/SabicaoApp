//
//  ChatGPTViewModel.swift
//  Sabicao App
//
//  Created by Cristino Junior on 8/11/24.
//

import SwiftUI
import OpenAI

@Observable
final class ChatGPTViewModel {
    
    var messages: [MessageModel] = []
    
    let openAI = OpenAI(apiToken: "")
    
    func sendNewMessage(content: String) {
        let userMessage = MessageModel(content: content, isUser: true)
        self.messages.append(userMessage)
        getBotReply()
    }
    
    func getBotReply() {
        let query = ChatQuery(
            model: .gpt3_5Turbo, messages: self.messages.map({
                .init(role: .user, content: $0.content)
            })
        )
        
        openAI.chats(query: query) { result in
            switch result {
            case .success(let success):
                guard let choice = success.choices.first else {
                    return
                }
                guard let message = choice.message.content else { return }
                DispatchQueue.main.async {
                    self.messages.append(MessageModel(content: message, isUser: false))
                }
            case .failure(let failure):
                print(failure)
            }
        }
    }
}
