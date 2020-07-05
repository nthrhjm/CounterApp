//
//  ContentView.swift
//  CounterApp
//
//  Created by nhajime on 2020/07/05.
//  Copyright © 2020 nhajime. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var number = 0
    var body: some View {
        VStack {
            ZStack{
                Image("counter")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text("\(number)")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
            }
            Button(action: { self.number += 1 }){
                Text("カウント")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
