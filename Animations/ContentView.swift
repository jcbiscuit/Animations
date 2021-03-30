//
//  ContentView.swift
//  Animations
//
//  Created by Jody Clelland on 26/3/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var change = false
    @State private var changetwo = false

    var body: some View {

        VStack{
            Button("Twist The Avo") {
                self.change.toggle()
            }.padding(.bottom, 200)
           
            
             Image("Avo")
            .resizable()
            .frame(width: 150, height: 150)
            .aspectRatio(contentMode: .fill)
            .rotationEffect(Angle.degrees(change ? 220 : 0))
            .animation(.easeOut)
                .scaleEffect(changetwo ? 2.5 : 1)
                .animation(.easeInOut)
            
            
            Button("Grow The Avo") {
                self.changetwo.toggle()
            }.padding(.top, 200)

        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
