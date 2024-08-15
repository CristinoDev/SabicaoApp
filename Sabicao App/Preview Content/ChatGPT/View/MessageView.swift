//
//  MessageView.swift
//  Sabicao App
//
//  Created by Cristino Junior on 8/11/24.
//

import SwiftUI

struct MessageView: View {
    @State var message: MessageModel
    var body: some View {
        Group {
            if message.isUser {
                HStack {
                    Spacer()
                    Text(LocalizedStringKey (message.content))
                        .padding()
                        .background(Color.gray.opacity(0.3))
                        .foregroundColor(Color.black)
                        .clipShape(Capsule())
                }
                .padding(.horizontal, 5)
            } else {
                HStack {
                    Image(.iconChatgpt)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30)
                        .padding(.horizontal, 5)
                    Text(LocalizedStringKey (message.content))
                        .padding()
                        .background(Color.black)
                        .foregroundColor(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    MessageView(message: MessageModel(content: "Helgoigrjoaierjgierjgijeroigjoerjgojeorjgijerojwgoerjogjeorijgoiejrogjoerjgojerwoi eroignoerwjgoierngoierngoine gerognoewrngneroginwerngioerwngnreoi[ngoerngonrongorewnognerwogneowngenwrognoerwngoewnognerowgnoerngonerogneorngerogneoirngoienrgoienwrgoinewroigewroignrwoiegnoeirgnoeringoirengoienrgo whjfoihwifhoierhgfoehroghoewhgheorwihgoiehwroighoiewrhgewogrhgohogheohgoirehgowher jgoiejhwriogjeiorjgojewroigjoierjgoijeroigjeroijgoierjgoijeroigjeroigjierjgoierjgiojegoijewrogijeroigjoreijgoirejgoierjgoijerijgoirejgoierwhjgoierj jfowjhfoijewqjhfioqwjefiojqweoijfoiqjojweiojoiewjfoijwoerijfiowejfioejwiojewiojoijfoiwejrfijwreijgfoiwerjgioehwgpuhewruoghpwouerghourewigh wehrgoiheroighoierhgoiwerhgoihrewoighoriwehgoirwehgoiewhrgoihreoihgoirehgoihergoiheroighoerihgoiwerhgoiwherogiheroigoierhgoiewrhgoierhgoihweroiheroigoiregoiwerg oergoiehrwgoiheroihgerohgoierhgoirehgoheoighoew lo", isUser: false))
}
