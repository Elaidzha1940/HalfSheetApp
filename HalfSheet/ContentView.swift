//  /*
//
//  Project: HalfSheet
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 17.10.2023
//
//  */

import SwiftUI
import HalfASheet

struct ContentView: View {
    @State private var isShowing = false
    @State private var amount = 0.0
    
    var body: some View {
        
        ZStack {
           
            Button(action: {
                isShowing.toggle()
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            })
        }
        HalfASheet(isPresented: $isShowing) {
            VStack {
                Image(systemName: "tortoise.fill")
                    .foregroundColor(.white)
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .rotation3DEffect(
                        Angle(degrees: amount),
                                              axis: (x: -1, y: -1, z: 0)
                    )
            }
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
