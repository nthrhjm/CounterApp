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
                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
            }
            HStack {
                Button(action: { self.number += 1 }){
                    Text("カウント")
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .background(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/)
                        .cornerRadius(10.0)
                }
                Spacer()
                    .frame(width: 12.0, height: 0.0)
                Button(action: { self.number = 0 }){
                    Text("リセット")
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .background(Color.red)
                        .cornerRadius(10.0)
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
