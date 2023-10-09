//
//  Task.swift
//  toDoListNew
//
//  Created by Miyuki Kikuchi on 08/10/2023.
//

import Foundation
import RealmSwift

class Task: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var title = ""
    @Persisted var completed = false
    
}
