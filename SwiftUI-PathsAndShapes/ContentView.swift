//
//  ContentView.swift
//  SwiftUI-PathsAndShapes
//
//  Created by Pradyumn Shukla on 06/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Path() { path in
                path.move(to: CGPoint(x: 200, y: 200))
                path.addArc(center: .init(x: 200, y: 200), radius: 150, startAngle: .degrees(0), endAngle: .degrees(290), clockwise: true)
                path.closeSubpath()
            }
            .fill(Color(.systemYellow))
            
            Path() { path in
                path.move(to: CGPoint(x: 200, y: 200))
                path.addArc(center: .init(x: 200, y: 200), radius: 150, startAngle: .degrees(290), endAngle: .degrees(190), clockwise: true)
            }
            .fill(Color(.systemBlue))
            
            Path() { path in
                path.move(to: CGPoint(x: 200, y: 200))
                path.addArc(center: .init(x: 200, y: 200), radius: 150, startAngle: .degrees(190), endAngle: .degrees(90), clockwise: true)
            }
            .fill(Color(.systemTeal))
           
            Path() { path in
                path.move(to: CGPoint(x: 200, y: 200))
                path.addArc(center: .init(x: 200, y: 200), radius: 150, startAngle: .degrees(90), endAngle: .degrees(0), clockwise: true)
            }
            .fill(Color(.systemPurple))
            .offset(x: 20, y: 20)
            
            
            Path() { path in
                path.move(to: CGPoint(x: 200, y: 200))
                path.addArc(center: .init(x: 200, y: 200), radius: 150, startAngle: .degrees(90), endAngle: .degrees(0), clockwise: true)
                path.closeSubpath()
            }
            .offset(x: 20, y: 20)
            .stroke(Color(red: 52/255, green: 52/255, blue: 52/255), lineWidth: 4)
            .overlay(
                Text("25%")
                    .font(.title)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .offset(x: 90, y: -100)
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
