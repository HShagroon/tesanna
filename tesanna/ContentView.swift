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
            VStack(spacing: 10) {
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

                Image("logo")
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .edgesIgnoringSafeArea(.all)
                                       
            }
            
        }
    
    }
}


    var body: some View {
        Text("This is the Second View")
            .navigationTitle("Second View")
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
