//
//  CategoryRepository.swift
//  ChunsikDorak
//
//  Created by 김수아 on 11/24/23.
//

import Foundation

enum CategoryRepository {
    static func getCategoryGroupList(request: GetCategoryGroupListRequest) async throws -> GetCategoryGroupListResponse {
        let urlRequest = try {
            var _request = URLRequest(url: URL(string: "https://faas.eligaspace.com/store/order-app/category-group/list")!)
            _request.httpMethod = "POST"
            _request.allHTTPHeaderFields = Network.commonRequestHeaders
            _request.httpBody = try JSONEncoder().encode(request)
            return _request
        }()
        let (resData, _) = try await URLSession.shared.data(for: urlRequest)
        return try JSONDecoder().decode(GetCategoryGroupListResponse.self, from: resData)
    }

    static func getCategoryList(request: GetCategoryListRequest) async throws -> GetCategoryListResponse {
        let urlRequest = try {
            var _request = URLRequest(url: URL(string: "https://faas.eligaspace.com/store/order-app/category/food-list")!)
            _request.httpMethod = "POST"
            _request.allHTTPHeaderFields = Network.commonRequestHeaders
            _request.httpBody = try JSONEncoder().encode(request)
            return _request
        }()
        let (resData, _) = try await URLSession.shared.data(for: urlRequest)
        return try JSONDecoder().decode(GetCategoryListResponse.self, from: resData)
    }
}
