//
//  TextFieldCustomView.swift
//  Sabicao App
//
//  Created by Cristino Junior on 8/14/24.
//

import SwiftUI

struct TextFieldCustomView: View {
    var title: LocalizedStringKey
    @Binding var textBinding: String
    var colorName: Color
    var body: some View {
        TextField(title, text: $textBinding, axis: .vertical)
            .lineLimit(5)
            .font(.system(size: 18))
            .padding()
            .background(colorName)
            .clipShape(Capsule())
            .frame(height: 50)
            .autocorrectionDisabled()
    }
}

#Preview {
    @Previewable @State var prompt = ""
    TextFieldCustomView(title: "test", textBinding: $prompt, colorName: Color.blue)
}
