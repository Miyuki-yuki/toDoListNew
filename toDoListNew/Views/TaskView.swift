//
//  TaskView.swift
//  toDoListNew
//
//  Created by Miyuki Kikuchi on 08/10/2023.
//

import SwiftUI

struct TaskView: View {
    @EnvironmentObject var realmManager: RealmManager
    
    var body: some View {
        ZStack{
            Color.accentColor
                .ignoresSafeArea(.all)
        }
        VStack{
            Text("My tasks")
                .font(.title3).bold()
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
            List {
                ForEach(realmManager.tasks, id: \.id) { task in
                    if !task.isInvalidated {
                        TaskRow(task: task.title, completed: task.completed)
                            .onTapGesture {
                                realmManager.updateTask(id: task.id, completed: !task.completed)
                            }
                            .swipeActions(edge: .trailing) {
                                Button(role: .destructive) {
                                    realmManager
                                        .deleteTask(id: task.id)
                                } label: {
                                    Label("Delete", systemImage: "trash")
                                }
                            }
                    }
                }
                .listRowSeparator(.hidden)
              
            }
            .background(Color.clear)
            .onAppear {
                UITableView.appearance().backgroundColor = UIColor.clear
                UITableViewCell.appearance()
                    .backgroundColor = UIColor.clear
            }
           Spacer()
        }
        .background(Color.accentColor)
    }
}

#Preview {
    TaskView()
        .environmentObject(RealmManager())
}
