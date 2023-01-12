//
//  LangaugeView.swift
//  Nebton
//
//  Created by Hind Almaaz on 19/06/1444 AH.
//

import SwiftUI
import LanguageManagerSwiftUI

struct LangaugeView: View {

  // MARK: - Properties

  @EnvironmentObject var languageSettings: LanguageSettings

  // MARK: - body

  var body: some View {
    VStack {
      Text("Select a language")
        .fontWeight(.bold)
        .foregroundColor(Color("B"))
        .padding()
      Button("Arabic") {
        withAnimation {
          languageSettings.selectedLanguage = .ar
        }
      }
      Button("English") {
        withAnimation {
          languageSettings.selectedLanguage = .en
        }
      }
    }
   .buttonStyle(AppButtonStyle())
  }
}

struct LangaugeView_Previews: PreviewProvider {
    static var previews: some View {
        LangaugeView()
    }
}
