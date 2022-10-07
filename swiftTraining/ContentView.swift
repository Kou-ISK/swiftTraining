//
//  ContentView.swift
//  swiftTraining
//
//  Created by 井坂航 on 2022/10/07.
//

import SwiftUI

struct ContentView: View {
    @State var memo:String = ""
    @State var memos:[String] = []
    var body: some View {
        VStack {
            Image(systemName: "clock")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            DatePicker(selection: .constant(Date()), label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })
            TextField("Memo", text: $memo)
            Button("Submit"){
                memos.append(memo)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
