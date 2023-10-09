//
//  AddButton.swift
//  toDoListNew
//
//  Created by Miyuki Kikuchi on 08/10/2023.
//

import SwiftUI

struct AddButton: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 50)
                .foregroundColor(Color(.systemGray))
            Text("+")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundStyle(.white)
            
            
        }
        .frame(height: 50)
    }
}

#Preview {
    AddButton()
}
