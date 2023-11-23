//
//  GetShopInfoResponse.swift
//  ChunsikDorak
//
//  Created by 김수아 on 11/24/23.
//

import Foundation

struct GetShopInfoResponse: Codable {
    let resultFlag: Bool
    let shopInfo: ShopInfo

    struct ShopInfo: Codable {
        let shopId: String
        let shopOrderIndex: Int
        let useYn, autoEndTime, regId, sendCloseYn: String
        let shopNm: String
        let deliveryOrderCnt: Int
        let regDt, placeId, currentEndDt, openState: String
        let imagePath, nomalPay, spaceId, shopManagerTel: String
        let autoWorkDay: AutoWorkDay
        let beforeEndDt, autoOpenTime: String
        let version: Int
        let useMobileYn: String
        let companyCodeList: [String]
        let beforeOpenDt: String
        let imageSize: Int
        let shopRemark: String?
        let shopAddr: String
        let currentOpenDt, shopManagerNm: String?
        let empPay, modId: String
        let shopColor: String?
        let businessNumber, pointPay, autoOpenState, brandId: String
        let modDt, shopOwner, delYn, shopType: String
        let delDt: String?

        struct AutoWorkDay: Codable {
            let 토, 월, 화, 금: String
            let 수, 목, 일: String
        }
    }
}
