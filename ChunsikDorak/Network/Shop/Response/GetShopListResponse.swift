//
//  GetShopListResponse.swift
//  ChunsikDorak
//
//  Created by 김수아 on 11/24/23.
//

import Foundation

struct GetShopListResponse: Codable {
    let resultFlag: Bool
    let shopList: [ShopList]

    struct ShopList: Codable {
        let shopId, useYn: String
        let shopOrderIndex: Int?
        let autoEndTime: String?
        let regId, shopNm: String
        let sendCloseYn: String?
        let regDt: String
        let deliveryOrderCnt: Int?
        let placeId: String
        let currentEndDt: String?
        let openState: String?
        let nomalPay, imagePath, spaceId: String
        let deliveryTimeList: [String]?
        let shopManagerTel: String?
        let autoWorkDay: AutoWorkDay?
        let beforeEndDt, autoOpenTime: String?
        let version: Int?
        let useMobileYn: String
        let companyCodeList: [String]
        let beforeOpenDt: String?
        let imageSize: Int
        let shopRemark: String?
        let shopAddr: String?
        let shopManagerNm: String?
        let currentOpenDt: String?
        let empPay, modId: String
        let shopColor: String?
        let pointPay: String
        let businessNumber: String?
        let autoOpenState: String?
        let brandId, modDt: String
        let shopOwner: String?
        let delYn, shopType: String
        let delDt: String?
        let robotDeliveryTimeout, robotDeliveryOrderCnt: Int?
        let robotDeliveryZoneList: [RobotDeliveryZoneList]?
        let pickupTypeList: PickupTypeList?

        struct AutoWorkDay: Codable {
            let 토: String?
            let 월: String
            let 화, 수, 금, 목: String?
            let 일: String?
        }

        struct PickupTypeList: Codable {
            let reserve, robot, pickup: String
        }

        struct RobotDeliveryZoneList: Codable {
            let name, poi: String
        }
    }
}
