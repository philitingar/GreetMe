//
//  LandscapeGreetingsView.swift
//  GreetMe
//
//  Created by Timi on 28/3/23.
//

import SwiftUI

struct LandscapeGreetingsView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            
            HStack {
               
                VerticalTitleView()
                Spacer()
                
                MessagesView()
                
       
            }
            .padding()
        }
    }
}

struct LandscapeGreetingsView_Previews: PreviewProvider {
    static var previews: some View {
        LandscapeGreetingsView()
    }
}
