//
//  random_swap.swift
//  tesanna
//
//  Created by Farah Alamri on 22/05/1445 AH.
//

import SwiftUI

struct random_swap: View {
    @State private var currentTab = 0
    @State var isShowingfullScreen:Bool=false
    @State var isShowingfullScreen2:Bool=false
    @State private var isShowingSheet = false
    @State var isSecondViewActive:Bool = false
            
            var body: some View {
                
                NavigationView {
                    ZStack {
                        VStack {
                            
                            TabView(selection: $currentTab) {
                                
                                
                                //1
                                ZStack{
                                    
                                    Image("RedSauceSpaghetti")
                                        .resizable()
                                        .scaledToFill()
                                        .ignoresSafeArea()
                                        .padding(.top, -40)
                                    
                                    VStack(alignment: .trailing) {
                                        
                                        Text("مكرونة بالصلصة الحمراء")
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
                                    .padding(.trailing , -100)
                                }
                                .tag(0)
                                
                                
                                //2
                                ZStack{
                                    
                                    Image("MargaritaPizza")
                                        .resizable()
                                        .scaledToFill()
                                        .ignoresSafeArea()
                                        .padding(.top, -40)
                                    
                                    VStack(alignment: .trailing) {
                                        
                                        Text("بيتزا مارقريتا")
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
                                    .padding(.trailing , -20000)
                                }
                                .tag(1)
                                
                                
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
    random_swap()
}
