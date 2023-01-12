//
//  HomePage.swift
//  Nebton
//
//  Created by Hind Almaaz on 16/06/1444 AH.
//
import SwiftUI

struct HomePage: View {
    var body: some View {
        NavigationStack {
            ZStack{

                Image("background")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                Image("cat")
                    .resizable()
                    .offset(y:275)
                    .frame(width:330,height: 310)
                
                
                
                VStack{
                    Button{
                        
                    }label: { NavigationLink( destination: StoryOnePage()){
                        Rectangle()
                            .frame(width: 318,height: 220)
                            .cornerRadius(17)
                            .foregroundColor(.init("B"))
                        
                        // .rotationEffect(.init(degrees: 10))
                            .offset(y:-120)
                            .overlay(Image("earth")
                                .offset(y:-160))
                            .overlay(Text("CardTitle1")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .offset(y:-90)
                            )
                            .overlay(Text("CardSub1")
                                .foregroundColor(.white)
                                .fontWeight(.medium)
                                .offset(y:-55)
                            )
                    }
                    }
                    //.rotationEffect(.init(degrees: -5))
                    
                    
                    //first button
                    
                    Button{
                    }label: {NavigationLink( destination: StoryTwoPage()){
                        Rectangle()
                            .frame(width: 318,height: 220)
                            .cornerRadius(17)
                            .foregroundColor(.init("O"))
                            .offset(y:-120)
                            .overlay(Image("apple")
                                     
                                .offset(y:-160))
                        
                            .overlay(Text("CardTitle2")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .offset(y:-80)
                            )
                            .overlay(Text("CardSub1")
                                .foregroundColor(.white)
                                .fontWeight(.medium)
                                .offset(y:-55)
                            )
                    }
                    }
                        
                        
                    }
                    .frame(width:318,height: 645)
                    .ignoresSafeArea()
                    
                    
                    
                }.navigationBarBackButtonHidden(true)
            }
            
        }
    }
    
    struct HomePage_Previews: PreviewProvider {
        static var previews: some View {
            HomePage()
        }
    }

