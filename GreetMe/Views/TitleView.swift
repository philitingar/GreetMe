//
//  TitleView.swift
//  GreetMe
//
//  Created by Timi on 24/3/23.
//

import SwiftUI

struct TitleView: View {
    @State var isRotated: Bool = false
    @State var captionIndex: Int = 0
    
    
    var body: some View {
        HStack {
            
             GreetingsTextView(captionIndex: $captionIndex)
            
            Spacer()
            
            RotatableCircleView(isRotated: $isRotated)
            
        }
        
    }
}

struct VerticalTitleView: View {
    @State var isRotated: Bool = false
    @State var captionIndex: Int = 0
    
    
    var body: some View {
        VStack(alignment:.leading) {
            
             GreetingsTextView(captionIndex: $captionIndex)
            
            RotatableCircleView(isRotated: $isRotated)
            
            Spacer()
        }
        .padding(30)
        
    }
}
struct RotatableCircleView: View {
    @Binding var isRotated: Bool
    
    var body: some View {
        Circle()
            .strokeBorder(AngularGradient(gradient: Gradient(
                colors: [.indigo, .blue, .purple, .cyan, .teal]),
                center: .center,
                angle: .zero),
                lineWidth: 15)
            .rotationEffect(isRotated ? .zero : .degrees(180))
            .frame(maxWidth: 70, maxHeight: 70)
            .onTapGesture {
                withAnimation(Animation.spring()) {
                    isRotated.toggle()
                }
            }
    }
}
struct GreetingsTextView : View  {
    
    @Binding var captionIndex: Int
    let caption: [LocalizedStringKey] = [
        "Exploring iOS 16 programming",
        "A quest for knowledge",
        "Saving the world!",
        "Conquering information!"
    ]
    var body: some View {
        VStack(alignment: .leading) {
            Text("Greetings")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text(caption[captionIndex])
                .font(.headline)
                .fontWeight(.thin)
                
            
        }
        .padding()
        .onTapGesture {
            captionIndex = Int.random(in: 0..<caption.count)
        }
    }
    
}
struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        VerticalTitleView()
    }
}
