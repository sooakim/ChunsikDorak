//
//  ContentView.swift
//  ChunsikDorak
//
//  Created by 김수아 on 11/24/23.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("accessToken") var accessToken: String?
    
    var body: some View {
        if accessToken == nil {
            LoginView()
        } else {
            MainView()
        }
    }
}

#Preview {
    ContentView()
}
