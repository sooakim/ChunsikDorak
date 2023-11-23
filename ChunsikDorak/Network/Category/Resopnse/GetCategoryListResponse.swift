//
//  GetCategoryListResponse.swift
//  ChunsikDorak
//
//  Created by 김수아 on 11/24/23.
//

import Foundation

struct GetCategoryListResponse: Codable {
    let resultFlag: Bool
    let categoryList: [CategoryList]

    struct CategoryList: Codable {
        let categoryId: String
        let useYn: Yn
        let categoryEngNm, groupId: String?
        let originEngDetail: String?
        let layoutType: Int?
        let regDt: String
        let startTime: String?
        let spaceId: SpaceId
        let categoryType: CategoryType
        let categoryNm, endTime: String?
        let categoryPid: String
        let brandId: BrandId
        let modDt: String
        let originDetail: String?
        let delYn: Yn
        let trafficLight: TrafficLight?
        let delDt, categoryGroupId: String?
        let localPaymentYn: Yn?

        enum BrandId: String, Codable {
            case the1654672007C4B2Dc22
        }

        enum CategoryType: String, Codable {
            case meal
        }

        enum Yn: String, Codable {
            case n
            case y
        }

        enum SpaceId: String, Codable {
            case the16528612054Edce023
        }

        enum TrafficLight: String, Codable {
            case low
            case medium
        }
    }
}
