//
//  ContentView.swift
//  Meal Time
//
//  Created by Cameron McDonnell on 08/01/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var food = "food8"
    
    var body: some View {
        
        ZStack {
            
            Image("wood")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image(food)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(75)
                    .padding(30)
                    .background(in: Rectangle())
                    .foregroundColor(.orange)
                
                Spacer()
                Spacer()
                Spacer()
                Text("Not Satisfied?")
                    .fontWeight(.heavy)
                    .padding(.top)
                    .colorInvert()
                    .font(.title2)
                    .font(.largeTitle)
                Spacer()
                Spacer()
                Spacer()
                
                HStack {
                    

                    Button {
                        mealtime()
                    } label: {
                        Image("logo")
                    }
                    .padding(.bottom, 40)
                        
                                    }
            }
        }
        
    }
    
    func mealtime() {
        // Randomise the meal
        
        food = "food" + String(Int.random(in: 1...26))
        
        print("Its Meal Time!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
