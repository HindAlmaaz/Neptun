//
//  StoryTwoPage.swift
//  Nebton
//
//  Created by Hind Almaaz on 16/06/1444 AH.
//

import SwiftUI
import AVFoundation
import SPAlert

var synthesizer = AVSpeechSynthesizer()

struct StoryTwoPage: View {
    @State private var isActive : Bool = false
    @State private var showingAlert3 = false
    @State private var showingAlert4 = false
    @State private var showingAlert5 = false
    @State private var Story2 = NSLocalizedString("Story2", comment: "")
    @State private var isPresented = false
    var body: some View {
        
            NavigationStack {
                ZStack{
                    Color(("O"))
                        .ignoresSafeArea()
                        
                    ScrollView{
                        Text(LocalizedStringKey("Story2"))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal,30)
                    
                    
                        .toolbarBackground(
                            Color("O"),
                            for: .navigationBar)
                        .toolbarBackground(.visible, for: .navigationBar)
                    
                        .toolbar {
                            
                            ToolbarItem(placement: .navigationBarTrailing) {
                                Button{ isPresented = true
                                }
                            label:
                                {
                                    Image(systemName: "textformat.size.larger")
                                        .foregroundColor(.white)
                                    
                                    
                            }
                                
                                .fullScreenCover(isPresented: $isPresented) {
                                  LangaugeView()
                                }
                            }
                            
//                            ToolbarItemGroup(placement: .navigationBarLeading) {
//                                Button {
//                                    
//                                }label: {  NavigationLink(destination: HomePage()){
//                                    Image(systemName: "chevron.left")
//                                    
//                                        .foregroundColor(.white)
//                                    
//                                }
//                                }
//                                
//                                
//                            }
                            ToolbarItem(placement: .navigationBarTrailing) {
                                
                                Button {
                                    
                                    let utterance = AVSpeechUtterance(string:"\(Story2)")
//                                    utterance.rate = 0.4
//                                    utterance.pitchMultiplier = 1.0
                                    let voices = AVSpeechSynthesisVoice.speechVoices()
                                    for voice in voices {
                                        print(voice.language)
                                    }

                                    synthesizer.stopSpeaking(at: .immediate)
                                }
                            label: {
                                    Image(systemName: "speaker.slash")
                                        .foregroundColor(.white)
                                }
                                
                                }
                            ToolbarItem(placement: .navigationBarTrailing) {
                                
                                Button {
                                    
                                    let utterance = AVSpeechUtterance(string:"\(Story2)")
//                                    utterance.rate = 0.1
//                                    utterance.pitchMultiplier = 4.0
                                    let voices = AVSpeechSynthesisVoice.speechVoices()
                                    for voice in voices {
                                        print(voice.language)
                                    }
  
                                    synthesizer.speak(utterance)

                                    
                                   
                                }label: {
                                    Image(systemName: "speaker.wave.2")
                                        .foregroundColor(.white)
                                }
                                
                                }
                            }
                        .padding(.bottom,40)
                        ZStack {
                        Rectangle()
                        .frame(width: 325,height: 403)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                        .shadow(radius: 15)

                                Image("nep2")
                                    .offset(y:-60)
                                        Text("Q2")
                                                .foregroundColor(.init("B"))
                                    .bold()
                                    .offset(y:100)
                                HStack{
                                    
                                    Button("show alert"){
                                        showingAlert3.toggle()
                                    }
                                    .SPAlert(
                                        isPresent: $showingAlert3,
                                        title:NSLocalizedString("AlertTitle1", comment: "")
                                            ,
                                        message:NSLocalizedString("Alertsub1", comment: ""),
                                        dismissOnTap: true,
//                                        preset:.custom(UIImage(systemName: "envelope.badge.fill")!),
                                        haptic:.success,
                                        layout:.init()
                                       
                                    )
                                    .clipShape(Rectangle())
                                        .frame(width: 44 ,height:44)
                                        .background(Color("green2"))
                                        .foregroundColor(Color("green2"))
                                        .cornerRadius(6)
                                        .offset(x:-50)
                                    
                                

                                    Button("show alert"){
                                        showingAlert4.toggle()
                                    }
                                    .SPAlert(
                                        isPresent: $showingAlert4,
                                        title:NSLocalizedString("AlertTitle2", comment: "")
                                            ,
//                                        message:NSLocalizedString("Alertsub1", comment: ""),
                                        dismissOnTap: true,
                                       preset:.custom(UIImage(systemName: "eye")!),
                                        haptic:.success,
                                        layout:.init()
                                       
                                    )
                                    .clipShape(Rectangle())
                                        .frame(width: 44 ,height:44)
                                        .foregroundColor(Color("yellow2"))
                                        .background(Color("yellow2"))
                                        .cornerRadius(6)
                                    
                                   

                                    Button("show alert"){
                                        showingAlert5.toggle()
                                    }
                                    .SPAlert(
                                        isPresent: $showingAlert5,
                                        title:NSLocalizedString("AlertTitle1", comment: "")
                                            ,
                                        message:NSLocalizedString("Alertsub1", comment: ""),
                                        dismissOnTap: true,
//                                        preset:.custom(UIImage(systemName: "envelope.badge.fill")!),
                                        haptic:.success,
                                        layout:.init()
                                       
                                    )
                                    .clipShape(Rectangle())
                                        .frame(width: 44 ,height:44)
                                        .foregroundColor(Color("red2"))
                                        .background(Color("red2"))
                                        .cornerRadius(6)
                                        .offset(x:50)
                                    
                                    
                                }.offset(y:160)
                            }
                            
                        }
                        .padding(.top,50)
                }
                    
            }
            
        }
    
    
    }
struct StoryTwoPage_Previews: PreviewProvider {
    static var previews: some View {
        StoryTwoPage()
            .environment(\.locale, .init(identifier: "de"))
    }
}
