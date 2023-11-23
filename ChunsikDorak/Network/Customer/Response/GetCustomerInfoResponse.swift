//
//  GetCustomerInfoResponse.swift
//  ChunsikDorak
//
//  Created by 김수아 on 11/24/23.
//

import Foundation

struct GetCustomerInfoResponse: Codable {
    let resultFlag: Bool
    let customerInfo: CustomerInfo

    struct CustomerInfo: Codable {
        let customerId, useYn, regId, empNmEn: String
        let regDt, viewShopId, spaceId: String
        let fcmToken: String?
        let company, customerType, customerVerifyEmail: String
        let rfidList: [String]
        let pwChangeDt, tempLoginYn, customerEmail, customerNm: String
        let empState: Int
        let customerPw, customerNo, lastLoginDt, signupDt: String
        let empNm, customerEmailVerifyDt, modId, companyCode: String
        let empEmail, customerEngNm, modDt, delYn: String
        let lastLoginIp, customerEmailVerifyYn: String
        let delDt: String?
        let empNo: String
    }
}
