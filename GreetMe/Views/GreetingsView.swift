//
//  ContentView.swift
//  GreetMe
//
//  Created by Timi on 23/3/23.
//

import SwiftUI


struct GreetingsView: View {
    
   
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack(alignment: .leading) {
               
                TitleView()
                Spacer()
                
                MessagesView()
                Spacer()
                Spacer()
       
            }
            .padding()
        }
    }
}

struct GreetingsView_Previews: PreviewProvider {
    static var previews: some View {
        GreetingsView()
        GreetingsView()
            .preferredColorScheme(.dark)
    }
}




