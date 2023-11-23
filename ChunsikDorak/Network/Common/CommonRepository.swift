//
//  CommonRepository.swift
//  ChunsikDorak
//
//  Created by 김수아 on 11/24/23.
//

import Foundation

enum CommonRepository {
    static func confirmToken(request: ConfirmTokenRequest) async throws -> ConfirmTokenResponse {
        let urlRequest = try {
            var _request = URLRequest(url: URL(string: "https://faas.eligaspace.com/store/order-app/auth/confirm-token")!)
            _request.httpMethod = "POST"
            _request.allHTTPHeaderFields = Network.commonRequestHeaders
            _request.httpBody = try JSONEncoder().encode(request)
            return _request
        }()
        let (resData, _) = try await URLSession.shared.data(for: urlRequest)
        let confirmToken = try JSONDecoder().decode(ConfirmTokenResponse.self, from: resData)
        UserDefaults.standard.setValue(confirmToken.accessToken, forKey: "accessToken")
        return confirmToken
    }

    static func createToken(request: CreateTokenRequest) async throws -> CreateTokenResponse {
        let urlRequest = try {
            var _request = URLRequest(url: URL(string: "https://faas.eligaspace.com/store/order-app/auth/create-token")!)
            _request.httpMethod = "POST"
            _request.allHTTPHeaderFields = Network.commonRequestHeaders
            _request.httpBody = try JSONEncoder().encode(request)
            return _request
        }()
        let (resData, _) = try await URLSession.shared.data(for: urlRequest)
        let createToken = try JSONDecoder().decode(CreateTokenResponse.self, from: resData)
        UserDefaults.standard.setValue(createToken.accessToken, forKey: "accessToken")
        return createToken
    }
}
