//
//  ChatGPTView.swift
//  Sabicao App
//
//  Created by Cristino Junior on 8/11/24.
//

import SwiftUI

struct ChatGPTView: View {
    @State var viewModel: ChatGPTViewModel = ChatGPTViewModel()
    @State var prompt: String = ""
    
    var body: some View {
        VStack {
            ScrollView {
                ForEach(viewModel.messages) {
                    message in
                    MessageView(message: message)
                        .padding(5)
                }
            }
            .scrollIndicators(.hidden)
            Divider()
            HStack {
                TextFieldCustomView(title: "Ask anything...", textBinding: $prompt, colorName: Color.gray.opacity(0.2))
                
                Button {
                    if !prompt.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
                        self.viewModel.sendNewMessage(content: prompt)
                        prompt = ""
                    }
                } label: {
                    SendButtonView(imageName: "arrow.up", backgroundColor: .black)
                }
            }
            .padding()
        }
        .navigationTitle("ChatGPT")
        .onAppear {
            viewModel = .init()
        }
    }
}

#Preview {
    NavigationStack {
        ChatGPTView()
    }
}
