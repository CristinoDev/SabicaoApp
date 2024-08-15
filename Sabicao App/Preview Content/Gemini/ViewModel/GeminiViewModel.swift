//
//  GeminiViewModel.swift
//  Sabicao App
//
//  Created by Cristino Junior on 8/14/24.
//

import SwiftUI
import GoogleGenerativeAI

@Observable
final class GeminiViewModel {
    
    let model = GenerativeModel(name: "gemini-1.5-pro-latest", apiKey: APIKey.default, systemInstruction: "")
    var isLoading = false
    var title = "How can I help you?"
    var response = LocalizedStringKey ("")
    
    func generateResponse(prompt: String) {
        isLoading = true
        response = ""
        
        Task {
            do {
                let result = try await model.generateContent(prompt)
                isLoading = false
                response = LocalizedStringKey(result.text ?? "No response found")
                title = ""
            } catch {
                response = "Error: \(error.localizedDescription)"
                isLoading = false
            }
        }
    }
}
