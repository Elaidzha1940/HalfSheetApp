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
                Text("Open")
                    .frame(width: 100, height: 45)
                    .font(.system(size: 25, weight: .bold, design: .rounded))
                    .foregroundStyle(.black)
                    .background(Color.gray)
                    .cornerRadius(20)
                    .padding()

            })
        }
        
        HalfASheet(isPresented: $isShowing, title: "Rotation") {
            VStack(spacing: 20) {
                Image(systemName: "tortoise.fill")
                    .foregroundColor(.white)
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .rotation3DEffect(
                        Angle(degrees: amount),
                        axis: (x: -10, y: 1, z: 10)
                    )
                
                Slider(value: $amount, in: 0...300)
                    .accentColor(.gray)
                
                Text("Degrees: \(Int(amount))")
                    .font(.system(size: 20, weight: .bold, design: .rounded))
            }
            //.padding()
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
