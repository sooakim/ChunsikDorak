//
//  GetShopListRequest.swift
//  ChunsikDorak
//
//  Created by 김수아 on 11/24/23.
//

import Foundation

struct GetShopListRequest: Codable {
    let spaceId: String
    let accessToken: String = UserDefaults.standard.string(forKey: "accessToken") ?? ""
}
