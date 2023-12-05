//
//  asian_swap.swift
//  Recipes_page
//
//  Created by shoug on 21/05/1445 AH.
//

import SwiftUI

struct asian_swap: View {
    @State private var currentTab = 0
    @State var isSecondViewActive:Bool = false

    var body: some View {
        
        
        NavigationView {
            ZStack {
                VStack {
                    
                    TabView(selection: $currentTab) {
                        
                        
                        //3
                        
                        ZStack{
                            
                            Image("sweetandsoursoup")
                                .resizable()
                                .scaledToFill()
                                .ignoresSafeArea()
                                .padding(.top, -40)
                            
                            VStack(alignment: .trailing) {
                                
                                Text("شوربه حامض وحلو")
                                    .font(.title)
                                    .padding(.top, 550)
                                    .foregroundColor(.white)
                                    .bold()
                                
                                HStack{
                                    Text("٢ أشخاص")
                                        .font(.title)
                                        .foregroundColor(.white)
                                    
                                    Image(systemName: "person.2.fill")
                                        .resizable()
                                        .foregroundColor(.white)
                                        .frame(width: 30, height: 30)
                                }
                                
                            }
                            .padding(.trailing , -150)
                        }
                        .tag(2)
                        
                        
                        //4
                        ZStack{
                            
                            Image("AsianChicken")
                                .resizable()
                                .scaledToFill()
                                .ignoresSafeArea()
                                .padding(.top, -40)
                            
                            VStack(alignment: .trailing) {
                                
                                Text("دجاج آسيوي بالكاشو")
                                    .font(.title)
                                    .padding(.top, 550)
                                    .foregroundColor(.white)
                                    .bold()
                                
                                HStack{
                                    Text("٣ أشخاص")
                                        .font(.title)
                                        .foregroundColor(.white)
                                    
                                    Image(systemName: "person.2.fill")
                                        .resizable()
                                        .foregroundColor(.white)
                                        .frame(width: 30, height: 30)
                                }
                                
                            }
                            .padding(.trailing , -130)
                        }
                        .tag(3)
                    }
                    .tabViewStyle(PageTabViewStyle())
                    .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                }
            }
            .ignoresSafeArea()
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    NavigationLink(destination: SecondView(), isActive: $isSecondViewActive){
                        
                        Image(systemName: "xmark")
                         //  .resizable()
                           .foregroundColor(.white)
                           .frame(width: 30, height: 30)
                          // .position(CGPoint(x: 88, y: 33))
                        
                    }
                    .onTapGesture {
                        isSecondViewActive.toggle()
                    }
               }
           }

        }
        .navigationBarBackButtonHidden(true)
        
    }
    
}

#Preview {
    asian_swap()
}
