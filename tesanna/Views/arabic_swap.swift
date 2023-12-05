//
//  arabic_swap.swift
//  Recipes_page
//
//  Created by shoug on 21/05/1445 AH.
//

import SwiftUI

struct arabic_swap: View {
    @State private var currentTab = 0
    @State var isSecondViewActive:Bool = false

    var body: some View {
        
        
        NavigationView {
            ZStack {
                VStack {
                    
                    TabView(selection: $currentTab) {
                        
                        //5
                        ZStack{
                            
                            Image("BukhariRice")
                                .resizable()
                                .scaledToFill()
                                .ignoresSafeArea()
                                .padding(.top, -40)
                            
                            VStack(alignment: .trailing) {
                                
                                Text("رز بخاري بالزبيب والجزر")
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
                            .padding(.trailing , -100)
                        }
                        .tag(4)
                        
                        
                        
                        //6
                        ZStack{
                            
                            Image("MolokhiyaWithChicken")
                                .resizable()
                                .scaledToFill()
                                .ignoresSafeArea()
                                .padding(.top, -40)
                            
                            VStack(alignment: .trailing) {
                                
                                Text("ملوخيه ورق الدجاج")
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
                            .padding(.trailing , -150)
                        }
                        .tag(5)
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
    arabic_swap()
}
