//
//  MainView.swift
//  Sabicao App
//
//  Created by Cristino Junior on 8/10/24.
//

import SwiftUI

struct MainView: View {
    @State var goToChatGPT: Bool = false
    @State var goToGemini: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 40) {
                Text("Choose an option")
                    .font(.title)
                    .fontWeight(.bold)
                
                HStack(spacing: 10){
                    Button {
                        goToChatGPT.toggle()
                    } label: {
                        OptionView(imageName: .chatgpt, titleName: "ChatGPT")
                        Spacer().frame(width: 60)
                        Button {
                            goToGemini.toggle()
                        } label: {
                            OptionView(imageName: .geminiLogo, titleName: "Gemini")
                        }
                    }
                }
            }
            .padding()
            .navigationDestination(isPresented: $goToChatGPT) {
                ChatGPTView()
            }
            .navigationDestination(isPresented: $goToGemini) {
                GeminiView()
            }
        }
    }
}

#Preview {
    MainView()
}

struct OptionView: View {
    var imageName: ImageResource
    var titleName: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            Text(titleName)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundStyle(.black)
        }
    }
}
