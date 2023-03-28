//
//  TextView.swift
//  GreetMe
//
//  Created by Timi on 24/3/23.
//

import SwiftUI


struct TextView: View {
    let text: LocalizedStringKey
    @State var color: Color
    let colors: [Color] = [
        .indigo, .teal, .cyan, .blue, .purple,
        Color(red: 0/255, green: 191/255, blue: 255/255),
        Color(red: 65/255, green: 105/255, blue: 225/255),
        Color(red: 0/255, green: 0/255, blue: 205/255),
        Color(red: 0/255, green: 0/255, blue: 128/255),
        Color(red: 123/255, green: 104/255, blue: 238/255),
        Color(red: 100/255, green: 149/255, blue: 237/255)
    ]
    var body: some View {
        Text(text)
            .font(.title2)
            .fontWeight(.semibold)
            .foregroundColor(Color.white)
            .padding()
            .background( color)
            .cornerRadius(20.0)
            .shadow(color: color, radius: 7, x:7, y:7)
            .onTapGesture {
                let length = colors.count
                let randomIndex = Int.random(in: 0..<length)
                color = colors[randomIndex]
            }
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView(text: "Hello", color: .purple)
    }
}
