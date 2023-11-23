//
//  GetCategoryGroupListResponse.swift
//  ChunsikDorak
//
//  Created by 김수아 on 11/24/23.
//

import Foundation

struct GetCategoryGroupListResponse: Codable {
    let resultFlag: Bool
    let categoryGroupList: [CategoryGroupList]

    struct CategoryGroupList: Codable {
        let categoryGroupId, useYn, empPayUseYn, normalPayUseYn: String
        let freeYn, regDt, startTime, categoryGroupEngNm: String
        let spaceId, categoryType: String
        let categoryGroupOrder, goodsPayPrice: Int
        let endTime, brandId, modDt, delYn: String
        let categoryGroupNm: String
        let goodsPrice: Int
        let delDt: String?
    }
}
