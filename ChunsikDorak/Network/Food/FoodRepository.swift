//
//  FoodRepository.swift
//  ChunsikDorak
//
//  Created by 김수아 on 11/24/23.
//

import Foundation

enum FoodRepository {
    static func getFoodList(
        request: GetFoodListRequest
    ) async throws -> GetFoodListResponse {
        let urlRequest = try {
            var _request = URLRequest(url: URL(string: "https://faas.eligaspace.com/store/order-app/goods/food-list")!)
            _request.httpMethod = "POST"
            _request.allHTTPHeaderFields = Network.commonRequestHeaders
            _request.httpBody = try JSONEncoder().encode(request)
            return _request
        }()
        let (resData, _) = try await URLSession.shared.data(for: urlRequest)
        return try JSONDecoder().decode(GetFoodListResponse.self, from: resData)
    }
}
