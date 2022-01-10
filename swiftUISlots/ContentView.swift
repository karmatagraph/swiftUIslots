//
//  ContentView.swift
//  swiftUISlots
//
//  Created by karma on 1/11/22.
//

import SwiftUI

struct ContentView: View {
    // Properties
    @State private var credits = 1000
    @State private var firstSlot=1
    @State private var secondSlot=2
    @State private var thirdSlot=3
    
    
    var body: some View {
        VStack(){
            Text("SwiftUI Slots!")
                .font(.headline)
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
                
            Spacer()
            HStack(){
                Text("Credits:")
                Text(String(credits))
            }
            Spacer()
            HStack(){
              // Show the slots according to num
                
                Image("fruit"+String(firstSlot)).resizable()
                    .aspectRatio(contentMode: .fit)
                Image("fruit"+String(secondSlot)).resizable()
                    .aspectRatio(contentMode: .fit)
                Image("fruit"+String(thirdSlot)).resizable()
                    .aspectRatio(contentMode: .fit)
               
            }
            
            
            
            
            Spacer()
            Button {
                
                 firstSlot = Int.random(in: 1...3)
                 secondSlot = Int.random(in: 1...3)
                 thirdSlot = Int.random(in: 1...3)
                
                
                // add or deduct credit according to slots
                if(firstSlot == secondSlot && firstSlot == thirdSlot){
                    credits += 250
                }
                else{
                    credits -= 10
                }
            } label: {
                Text("Spin")
                    .foregroundColor(Color.black)
                    .background(Color.pink)
                    
            }
            

            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
