//
//  CreateTokenRequest.swift
//  ChunsikDorak
//
//  Created by 김수아 on 11/24/23.
//

import Foundation

struct CreateTokenRequest: Codable {
    let fcmToken: String = ""
    let spaceId: String = "16528612054edce023"
    let loginType: String = "eliga-store-order"
    let loginId: String
    let loginPw: String
    let accessToken: String? = nil
}
