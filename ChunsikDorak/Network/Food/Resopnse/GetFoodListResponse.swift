//
//  GetFoodListResponse.swift
//  ChunsikDorak
//
//  Created by 김수아 on 11/24/23.
//

import Foundation

struct GetFoodListResponse: Codable {
    let resultFlag: Bool
    let goodsList: [GoodsList]

    struct GoodsList: Codable {
        let stockId: String
        let orderMax: Int
        let shopId, goodsId, regDt: String
        let orderCnt: Int
        let goodsNm, spaceId, soldOutYn, orderDt: String
        let promotionYn, categoryId, brandId, modDt: String
        let goodsEngNm: String?
        let imageSize: Int
        let surveyYn: String?
        let goodsDetail: String?
        let goodsBillNm: String
        let imagePath: String?
        let tagId: String?
        let goodsEngDetail: String?
    }
}
