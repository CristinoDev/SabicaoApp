//
//  GeminiView.swift
//  Sabicao App
//
//  Created by Cristino Junior on 8/10/24.
//

import SwiftUI


struct GeminiView: View {

    @State var viewModel = GeminiViewModel()
    @State var prompt: String = ""
    
    var body: some View {
        VStack {
            ZStack {
                ScrollView {
                    Text(viewModel.title)
                        .font(.title)
                    Text(viewModel.response)
                        .font(.body)
                }
                .padding()
                .scrollIndicators(.hidden)
                if viewModel.isLoading {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle())
                        .scaleEffect(2)
                }
            }
            Divider()
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 0)
            HStack(spacing: 10) {
                TextFieldCustomView(title: "Ask anything ...", textBinding: $prompt, colorName: Color.blue.opacity(0.2))
                Button {
                    if !prompt.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
                        viewModel.generateResponse(prompt: prompt)
                        prompt = ""
                    }
                } label: {
                    SendButtonView(imageName: "paperplane.fill", backgroundColor: .blue)
                }
            }
            .padding()
        }
        .navigationTitle("Gemini")
    }
}

#Preview {
    NavigationStack {
        GeminiView()
    }
}
