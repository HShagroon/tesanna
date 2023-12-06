//
//  RecipeDetailsPage.swift
//  tesanna
//
//  Created by Farah Alamri on 21/05/1445 AH.
//

import SwiftUI

struct RecipeDetailsPage: View {
    public var RECIPE = Int()
    let data: [String] = ["دجاج", "ارز بسمتي", "بصل حبتين", " ٥ فصوص ثوم", "طماطم حبتين","ثلاث ملاعق كبيرة زبادي","٣ فلفل اخضر "," ١/٢ ملعقة كبيرة ملح"," ١/٢ ملعقة صغيرة فلفل اسود","١/٢ ملعقة صغيرة كمون","١/٢ ملعقة صغيره كزبرة يابسة ","١/٢ ملعقة صغيرة قرفة","١/٢ ملعقة صغيرة قرنفل","هيل ٥ حبات","ملعقة كبيرة زيت نباتي"]
    var recipeVM = RecipeViewModel()
    var body: some View {
        let recipeInfo = recipeVM.findRecipe(recipeId: RECIPE)
        
            NavigationView {
                ScrollView {
                    ZStack(alignment: .trailing) {
                        VStack(spacing: 10) {
                            Image("biryani")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 393.06, height: 388.16)
                            
                            RoundedRectangle(cornerRadius: 15)
                                .foregroundColor(Color.yellow.opacity(1.0))
                                .frame(width: 308.0, height: 43.0)
                                .offset(x: 9)
                            
                                .overlay(
                                    Image("serving")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 35, height: 200)
                                        .foregroundColor(.black)
                                        .offset(x: -20 , y: -2)
                                )
                                .overlay(
                                    Text( "هندي")
                                        .foregroundColor(.black)
                                        .padding(.trailing, 131.0)
                                )
                                .overlay(
                                                              HStack {
                                                                  Image(systemName: "person.2.fill")
                                                                      .foregroundColor(.black)
                                                                      .frame(width: 50, height: 230)
                                                              }
                                                              .padding(.trailing, 10)
                                                              .offset(x: 140)
                                                          )
                                                          .overlay(
                                                              Text( "٤ اشخاص ")
                                                                  .foregroundColor(.black)
                                                                  .padding(.trailing, -538.0))
                                                      Text("برياني دجاج")
                                                          .font(.custom("SF Arabic Rounded-Bold", size: 30))
                                                          .fontWeight(.bold)
                                                          .padding()

                                                      HStack {
                                                          Spacer()
                                                          Text("المقادير :")
                                                              .font(.custom("SF Arabic Rounded-Bold", size: 28))
                                                              .fontWeight(.bold)
                                                              .padding()
                                                      }
                                                      
                                                      ForEach(data, id: \.self) { item in
                                                          VStack {
                                                              Text(item)
                                                                  .padding(.leading, 280.2)
                                                                  .padding()
                                                              Divider()
                                                          }
                                                      }
                            Text("طريقة التحضير:")
                                                       .font(.custom("SF Arabic Rounded-Bold", size: 28))
                                                       .fontWeight(.bold)
                                                       .padding(.top)
                                                       .offset(x: 110, y: -2)
                                                   Text("في قدر على النار، يحمى الزيت ثم يضاف إليه البصل ويقلب حتى يذبل، ثم يضاف الثوم والدجاج والتوابل، وتقلب المكونات على نار هادئة، حتى يتحول لون الدجاج إلى الذهبي")
                                                       .padding()
                                                       .lineLimit(nil)
                                                       .overlay(
                                                           Circle()
                                                               .fill(Color.yellow)
                                                               .frame(width: 28, height: 28)
                                                               .overlay(
                                                                   Text("1")
                                                                       .foregroundColor(.black)
                                                               )
                                                               .offset(x: 170, y: -39)
                                                       )
                                                   
                                                   Text("تضاف الطماطم إلى الدجاج، ويقلب حتى يكثف ثم يضاف لبن الزبادي وقليل من الماء، يغطى القدر ويترك على نار هادئة حتى ينضج الدجاج")
                                                       .padding()
                                                       .lineLimit(nil)
                                                       .overlay(
                                                           Circle()
                                                               .fill(Color.yellow)
                                                               .frame(width: 28, height: 28)
                                                               .overlay(
                                                                   Text("2")
                                                                       .foregroundColor(.black)
                                                               )
                                                               .offset(x: 170, y: -44)
                                                       )
                            Text("يضاف الأرز إلى الدجاج مع قليل من الماء بحيث تغطى المقدار بمقدار 1 سم، ويغطى القدر ويترك على نار هادئة تمامًا حتى ينضج الأرز.")
                                                       .padding()
                                                       .lineLimit(nil)
                                                       .overlay(
                                                           Circle()
                                                               .fill(Color.yellow)
                                                               .frame(width: 28, height: 28)
                                                               .overlay(
                                                                   Text("3")
                                                                       .foregroundColor(.black)
                                                               )
                                                               .offset(x: 170, y: -43)
                                                       )
                                                   
                                                   Text("ثم تقلب المكونات في صينية وتدخل الفرن لمدة 10 دقائق أو حتى تغمق الدجاج.")
                                                       .padding()
                                                       .lineLimit(nil)
                                                       .overlay(
                                                           Circle()
                                                               .fill(Color.yellow)
                                                               .frame(width: 28, height: 28)
                                                               .overlay(
                                                                   Text("4")
                                                                       .foregroundColor(.black)
                                                               )
                                                               .offset(x: 170, y: -40)
                                                       )
                                                   
                                                   Text("مرجع الوصفة")
                                                       .font(.custom("SF Arabic Rounded-Bold", size: 28))
                                                       .fontWeight(.bold)
                                                       .padding()
                                                       .offset(x: 120, y: 8)
                            Text("مطبخ سيدتي")
                                    .offset(x: 140, y: -10)

                                Divider()
                            }
                            .padding()
                            
                            HStack {
                                Spacer()
                                Image(systemName: "chevron.left")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(.white)
                                    .padding()
                                    .offset(x: -130, y: -1280)
                                
                                Spacer()
                                Image(systemName: "heart")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                    .foregroundColor(.yellow)
                                    .padding()
                                    .offset(x: -7, y: -1280)
                            }
                        }
                    }
                }
            }
    
}

#Preview {
    RecipeDetailsPage()
}
