//
//  SendButtonView.swift
//  Sabicao App
//
//  Created by Cristino Junior on 8/14/24.
//

import SwiftUI

struct SendButtonView: View {
    var imageName: String
    var backgroundColor: Color
    var body: some View {
        ZStack {
            backgroundColor
            Image(systemName: imageName)
                .resizable()
                .foregroundStyle(.white)
                .scaledToFit()
                .frame(width: 20)
        }
        .scaledToFit()
        .frame(width: 50)
        .clipShape(Circle())
    }
}

#Preview {
    SendButtonView(imageName: "house", backgroundColor: Color.black)
}
