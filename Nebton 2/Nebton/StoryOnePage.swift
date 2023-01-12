//
//  StoryOnePage.swift
//  Nebton
//
//  Created by Hind Almaaz on 16/06/1444 AH.
//

import SwiftUI
import AVFoundation
import SPAlert

var utterance1 = AVSpeechSynthesizer()

struct StoryOnePage: View {
 
    
    @State private var showingAlert = false
    @State private var isActive : Bool = false
    
    @State private var showingAlert1 = false
    @State private var showingAlert2 = false
    
    @State private var Story = NSLocalizedString("Story1", comment: "")
    @State private var isPresented = false
    var body: some View {
        
            NavigationStack {
                ZStack{
                    Color(("B"))
                        .ignoresSafeArea()
                        
                    ScrollView{
                        Text(LocalizedStringKey("Story1"))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal,30)
                    
                    
                        .toolbarBackground(
                            Color("B"),
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
//                            }
                            
                            ToolbarItem(placement: .navigationBarTrailing) {
                                
                                Button {
                                    
                                    let utterance = AVSpeechUtterance(string:"\(Story)")
//                                    utterance.rate = 0.4
//                                    utterance.pitchMultiplier = 1.0
                                    let voices = AVSpeechSynthesisVoice.speechVoices()
                                    for voice in voices {
                                        print(voice.language)
                                    }

                                    utterance1.stopSpeaking(at: .immediate)
                                }
                            label: {
                                    Image(systemName: "speaker.slash")
                                        .foregroundColor(.white)
                                }
                                
                                }
                            ToolbarItem(placement: .navigationBarTrailing) {
                                
                                Button {
                                    
                                    let utterance = AVSpeechUtterance(string:"\(Story)")
//                                    .rate = 0.4
//                                    .pitchMultiplier = 2.0
                                    let voices = AVSpeechSynthesisVoice.speechVoices()
                                    for voice in voices {
                                        print(voice.language)
                                    }

                                    utterance1.speak(utterance)
                                }
                            label: {
                                    Image(systemName: "speaker.wave.2")
                                        .foregroundColor(.white)
                                }
                                
                                }
                           
                            
                            }
                        .padding(.bottom,40)
                        ZStack{
                        Rectangle()
                        .frame(width: 325,height: 403)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                        .shadow(radius: 15)

                                Image("nep1")
                                    .offset(y:-70)
                                Text("Q1")
                                    .foregroundColor(.init("O"))
                                    .bold()
                                    .offset(y:80)
                                HStack{
                                    //green
                                
                                    Button("show alert"){
                                        showingAlert.toggle()
                                    }
                                    
                                    .SPAlert(
                                        isPresent: $showingAlert,
                                        title:NSLocalizedString("AlertTitle1", comment: "")
                                            ,
                                        message:NSLocalizedString("Alertsub1", comment: ""),
                                        dismissOnTap: true,
//                                        preset:.custom(UIImage(systemName: "envelope.badge.fill")!),
                                        haptic:.success,
                                        layout:.init()
                                       
                                    )
                                    
//                                    .alert("AlertTitle1",isPresented: $showingAlert){
//
//                                    }message: {
//                        Text("Alertsub1")
//                        }

                                    .clipShape(Rectangle())
                                        .frame(width: 44 ,height:44)
                                        .foregroundColor(.init("green1"))
                                        .background(Color("green1"))
                                        .cornerRadius(6)
                                        .offset(x:-50)
                        //yellow
                        Button("show alert"){
                            showingAlert1.toggle()
                        }
                        .SPAlert(
                            isPresent: $showingAlert1,
                            title:NSLocalizedString("AlertTitle2", comment: ""),
//                            message:NSLocalizedString("Alertsub2", comment: ""),
                            dismissOnTap: true,
                                       preset:.custom(UIImage(systemName: "eye")!),
                            haptic:.success,
                            layout:.init()
                           
                        )

                                    .clipShape(Rectangle())
                                        .frame(width: 44 ,height:44)
                                        .foregroundColor(.init("yellow1"))
                                        .background(Color("yellow1"))
                                        .cornerRadius(6)
                                    
                                   // red
                                    Button("show alert"){
                                        showingAlert2 = true
                                    }
                                    .SPAlert(
                                        isPresent: $showingAlert2,
                                        title:NSLocalizedString("AlertTitle2", comment: ""),
//                                        message:NSLocalizedString("Alertsub2", comment: ""),
                                        dismissOnTap: true,
                                       preset:.custom(UIImage(systemName: "eye")!),
                                        haptic:.success,
                                        layout:.init()
                                       
                                    )

                                    .clipShape(Rectangle())
                                        .frame(width: 44 ,height:44)
                                        .foregroundColor(.init("red1"))
                                        .background(Color("red1"))
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

struct StoryOnePage_Previews: PreviewProvider {
    static var previews: some View {
        StoryOnePage()
            .environment(\.locale, .init(identifier: "en"))

        
    }
}
