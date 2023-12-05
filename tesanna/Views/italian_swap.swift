//
//  italian_swap.swift
//  Recipes_page
//
//  Created by shoug on 21/05/1445 AH.
//

import SwiftUI

struct italian_swap: View {
    
    @State private var currentTab = 0
    @State var isSecondViewActive:Bool = true

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
    italian_swap()
}

//struct italian_swap_Preview: PreviewProvider {
//    static var previews: some View {
//        italian_swap()
//    }
//}
