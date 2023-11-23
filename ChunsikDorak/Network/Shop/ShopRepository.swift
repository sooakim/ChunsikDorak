//
//  ShopRepository.swift
//  ChunsikDorak
//
//  Created by 김수아 on 11/24/23.
//

import Foundation

enum ShopRepository {
    static func getShopInfo(request: GetShopInfoRequest) async throws -> GetShopInfoResponse {
        let urlRequest = try {
            var _request = URLRequest(url: URL(string: "https://faas.eligaspace.com/store/order-app/shop/info")!)
            _request.httpMethod = "POST"
            _request.allHTTPHeaderFields = Network.commonRequestHeaders
            _request.httpBody = try JSONEncoder().encode(request)
            return _request
        }()
        let (resData, _) = try await URLSession.shared.data(for: urlRequest)
        return try JSONDecoder().decode(GetShopInfoResponse.self, from: resData)
    }

    static func getShopList(request: GetShopListRequest) async throws -> GetShopListResponse {
        let urlRequest = try {
            var _request = URLRequest(url: URL(string: "https://faas.eligaspace.com/store/order-app/shop/list")!)
            _request.httpMethod = "POST"
            _request.allHTTPHeaderFields = Network.commonRequestHeaders
            _request.httpBody = try JSONEncoder().encode(request)
            return _request
        }()
        let (resData, _) = try await URLSession.shared.data(for: urlRequest)
        return try JSONDecoder().decode(GetShopListResponse.self, from: resData)
    }
}
