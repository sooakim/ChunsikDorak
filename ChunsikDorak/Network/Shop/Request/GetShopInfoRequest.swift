//
//  GetShopInfoRequest.swift
//  ChunsikDorak
//
//  Created by 김수아 on 11/24/23.
//

import Foundation

struct GetShopInfoRequest: Codable {
    let shopId: String
    let accessToken: String = UserDefaults.standard.string(forKey: "accessToken") ?? ""
}
