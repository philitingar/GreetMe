//
//  BackgroundView.swift
//  GreetMe
//
//  Created by Timi on 24/3/23.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        LinearGradient(colors: [.indigo, .cyan, .mint, .indigo, .teal],
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            .opacity(0.6)
            .ignoresSafeArea()
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
