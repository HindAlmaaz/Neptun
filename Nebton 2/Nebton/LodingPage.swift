//
//  SplashPage.swift
//  Nebton
//
//  Created by Hind Almaaz on 16/06/1444 AH.
//

import SwiftUI

struct LodingPage: View {
    @State private var isActive = false
    @State private var size = 0.7
    @State private var opacity = 0.2
    var body: some View {
        NavigationStack {
            NavigationLink(destination: HomePage()) {
                
                ZStack{
                    
                    Image("background")
                        .resizable()
                        .ignoresSafeArea()
                        .scaledToFill()
                    
                    HStack{
                        
                        GIFView(type: .name(NSLocalizedString("Nebton", comment: "")))
                        
                            .frame(width: 300, height: 180)
                    }
                    .scaleEffect (size)
                    .opacity (opacity)
                    .onAppear {
                        withAnimation(.easeIn(duration: 1.0)) {
                            self.size = 1.0
                            self.opacity = 1.0
                        }
                    }
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                            self.isActive = true
                        }
                    }
                    
                }
                
            }
            
        }.navigationBarBackButtonHidden(true)
        
    }
       
}

struct LodingPage_Previews: PreviewProvider {
    static var previews: some View {
        LodingPage()
    }
}

