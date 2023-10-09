//
//  TaskRow.swift
//  toDoListNew
//
//  Created by Miyuki Kikuchi on 08/10/2023.
//

import SwiftUI

struct TaskRow: View {
    var task: String
    var completed: Bool
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: completed ? "checkmark.circle" : "circle")
            Text(task)
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    TaskRow(task: "Study", completed: true)
}
