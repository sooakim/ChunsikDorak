//
//  LoginView.swift
//  ChunsikDorak
//
//  Created by 김수아 on 11/24/23.
//

import Foundation
import SwiftUI

struct LoginView: View {
    @State var email: String = ""
    @State var password: String = ""
    @State var shouldShowError: Bool = false

    var body: some View {
        VStack {
            Image(uiImage: UIImage.logo)
                .resizable()
                .frame(width: 200, height: 200)

            Text("EligaStore계정으로\n춘식도락이용")
                .font(.headline)
                .multilineTextAlignment(.center)

            TextField(text: $email) {
                Text("이메일")
            }.textFieldStyle(.roundedBorder)

            SecureField(text: $password) {
                Text("비밀번호")
            }.textFieldStyle(.roundedBorder)

            Button {
                doLogin()
            } label: {
                Text("로그인")
                    .frame(maxWidth: .infinity)
            }.buttonStyle(.bordered)

            Button {
                doRegister()
            } label: {
                Text("회원가입")
                    .frame(maxWidth: .infinity)
            }.buttonStyle(.bordered)
        }.padding()
            .alert(isPresented: $shouldShowError) {
                Alert(title: Text("에러"))
            }
    }

    private func doRegister() {
        UIApplication.shared.open(URL(string: "https://order.eligaspace.com/auth/login?code=kakao")!)
    }

    private func doLogin() {
        Task {
            do {
                let createToken = try await CommonRepository.createToken(request: .init(loginId: email, loginPw: password))
                UserDefaults.standard.setValue(createToken.accessToken, forKey: "accessToken")
            } catch {
                shouldShowError = true
            }
        }
    }
}

#Preview {
    LoginView()
}
