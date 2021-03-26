//
//  ContentView.swift
//  Animations
//
//  Created by Jody Clelland on 26/3/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var change = false

    var body: some View {

        VStack{
            Button("Twist The Avo") {
                self.change.toggle()
            }
            .padding(.bottom, 100)
           
            
             Image("Avo")
            .resizable()
            .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 300)
            .rotationEffect(Angle.degrees(change ? 220 : 0))
            .animation(.easeOut)

        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
