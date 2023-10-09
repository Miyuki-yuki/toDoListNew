//
//  AddTaskView.swift
//  toDoListNew
//
//  Created by Miyuki Kikuchi on 08/10/2023.
//

import SwiftUI

struct AddTaskView: View {
    @EnvironmentObject var realmManager: RealmManager
    @State private var title: String = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Create a new task")
                .font(.title3).bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            TextField("Enter your new task here", text: $title)
                .textFieldStyle(.roundedBorder)
            
            Button{
                if title != "" {
                    realmManager.addTask(taskTitle: title)
                }
                dismiss()
            }label: {
                Text("Add tasks")
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(Color(.systemGray))
                    .cornerRadius(30)
            }
            Spacer()
        }
        .padding(.top, 40)
        .padding(.horizontal)
        .background(Color.accentColor)
    }
}

#Preview {
    AddTaskView()
        .environmentObject(RealmManager())
}
