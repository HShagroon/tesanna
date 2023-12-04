//
//  ContentView.swift
//  tesanna
//
//  Created by Haneen Rida Shagroon on 02/05/1445 AH.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isActive: Bool = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                NavigationLink(destination: SecondView(), isActive: $isActive) {
                    EmptyView()
                }
                .hidden()
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                        // Set isActive to true after 3 seconds to trigger the NavigationLink
                        isActive = true
                    }
                }
                VStack{
                    Image("logo")
                    Text("فكّر أقل واطبخ أكثر")
                    .dynamicTypeSize(.small)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity) // Ensure the VStack fills the available space
                    .background(Color("background"))
                    .ignoresSafeArea(.all)
                 
            }
           
        }
        
    }
}

#Preview{
   
        ContentView()
    }
