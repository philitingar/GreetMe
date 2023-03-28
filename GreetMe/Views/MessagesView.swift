//
//  MessagesView.swift
//  GreetMe
//
//  Created by Timi on 24/3/23.
//

import SwiftUI

struct MessagesView: View {
    let messages = [
        DataModel(text: "Hi there", color: .indigo),
        DataModel(text: "Welcome to this app!", color: .cyan),
        DataModel(text: "Are you ready to,", color: .purple),
        DataModel(text: "Start exploring?", color: .teal),
        DataModel(text: "Boom!", color: .blue),
        DataModel(text: "Pow-Pow!", color: .indigo)

    
    
    ]
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                ForEach(messages, content: { dataItem in
                    TextView(text: dataItem.text, color: dataItem.color)
                })
            }
            .padding()
            
            Spacer()
        }
        
    }
}

struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}
