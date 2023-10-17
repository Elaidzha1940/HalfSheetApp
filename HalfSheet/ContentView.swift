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
                Text("Open Sheet")
                    .frame(width: 155, height: 45)
                    .font(.system(size: 25, weight: .bold, design: .rounded))
                    .foregroundStyle(.black)
                    .background(Color.gray)
                    .cornerRadius(20)
                    .padding()
                
            })
            
            HalfASheet(isPresented: $isShowing, title: "Rotation") {
                VStack(spacing: 20) {
                    Image(systemName: "tortoise.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 50, weight: .bold, design: .rounded))
                        .rotation3DEffect(
                            Angle(degrees: amount),
                            axis: (x: 0, y: 360, z: 0)
                        )
                    
                    Slider(value: $amount, in: 0...360)
                        .accentColor(.gray)
                    
                    Text("Degrees: \(Int(amount))")
                        .font(.system(size: 20, weight: .bold, design: .rounded))
                }
                .padding()
            }
            .height(.proportional(0.45))
            .closeButtonColor(UIColor.white)
            //.backgroundColor(.white)
            .contentInsets(EdgeInsets(top: 50, leading: 10, bottom: 30, trailing: 10))
        }
        .preferredColorScheme(.dark)
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
