//
//  NebtonApp.swift
//  Nebton
//
//  Created by Hind Almaaz on 16/06/1444 AH.
//

import SwiftUI

@main
struct NebtonApp: App {
    var body: some Scene {
        WindowGroup {
            LanguageManagerView(.deviceLanguage) {
                LodingPage()
                
            }
        }
    }
}
