//
//  ContentView.swift
//  ToDoApp
//
//  Created by Nakagawa Kosuke on 2023/08/18.
//

import SwiftUI

struct TaskData: Identifiable{
    var id = UUID()
    var title: String
    var completed: Bool
    
}

struct ContentView: View {
    @State var taskData = [
        TaskData(title: "ジョギングする", completed: false),
        TaskData(title: "お花に水をやる", completed: false),
        TaskData(title: "部屋の掃除をする", completed: false),
        TaskData(title: "本を読む", completed: false)
    ]
    var body: some View {
        NavigationStack{
            List(0..<taskData.count, id:\.self) { index in
                Button{
                    taskData[index].completed = !taskData[index].completed
                    
                }label:{
                    HStack {
                        Image(systemName: taskData[index].completed ? "checkmark.circle.fill" : "circle")
                        Text(taskData[index].title)
                    }
                }
                .foregroundColor(.primary)
            }
            .navigationTitle("ToDoリスト")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
