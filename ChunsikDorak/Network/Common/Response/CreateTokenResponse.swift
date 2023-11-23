//
//  CreateTokenResponse.swift
//  ChunsikDorak
//
//  Created by 김수아 on 11/24/23.
//

import Foundation

struct CreateTokenResponse: Codable {
    let resultFlag: Bool
    let accessToken: String
    let loginInfo: LoginInfo

    struct LoginInfo: Codable {
        let loginId, customerId, customerEmail, customerNm: String
        let customerType, lastLoginDt, spaceId, viewShopId: String
        let fcmToken, loginType: String
    }
}
