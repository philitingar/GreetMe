//
//  DataItemModel.swift
//  GreetMe
//
//  Created by Timi on 24/3/23.
//

import SwiftUI


struct DataModel: Identifiable {
    var id =  UUID()
    
    let text: LocalizedStringKey
    let color: Color
}
