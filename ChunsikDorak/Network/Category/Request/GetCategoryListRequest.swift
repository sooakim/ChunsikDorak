//
//  GetCategoryListRequest.swift
//  ChunsikDorak
//
//  Created by 김수아 on 11/24/23.
//

import Foundation

struct GetCategoryListRequest: Codable {
    let brandId: String
    let categoryType: String
    let accessToken: String = UserDefaults.standard.string(forKey: "accessToken") ?? ""
}
