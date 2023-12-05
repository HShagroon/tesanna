//
//  indian_swap.swift
//  Recipes_page
//
//  Created by shoug on 21/05/1445 AH.
//

import SwiftUI

struct indian_swap: View {
    @State private var currentTab = 0
    @State var isSecondViewActive:Bool = false

    var body: some View {
        
        
        NavigationView {
            ZStack {
                VStack {
                    
                    TabView(selection: $currentTab) {
                        
                        
                        //7
                        ZStack{
                            
                            
                            Image("SpicyIndianKabab")
                                .resizable()
                                .scaledToFill()
                                .ignoresSafeArea()
                                .padding(.top, -40)
                            
                            VStack(alignment: .trailing) {
                                
                                Text("كباب هندي حار  بالصلصه")
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
                            .padding(.trailing , -80)
                        }
                        .tag(6)
                        
                        
                        
                        //8
                        ZStack{
                            
                            
                            Image("ChickenBiryani")
                                .resizable()
                                .scaledToFill()
                                .ignoresSafeArea()
                                .padding(.top, -40)
                            
                            VStack(alignment: .trailing) {
                                
                                Text("برياني هندي بالدجاج")
                                    .font(.title)
                                    .padding(.top, 550)
                                    .foregroundColor(.white)
                                    .bold()
                                
                                HStack{
                                    Text("٤ أشخاص")
                                        .font(.title)
                                        .foregroundColor(.white)
                                    
                                    Image(systemName: "person.2.fill")
                                        .resizable()
                                        .foregroundColor(.white)
                                        .frame(width: 30, height: 30)
                                }
                                
                            }
                            .padding(.trailing , -140)
                        }
                        .tag(7)
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
    indian_swap()
}
