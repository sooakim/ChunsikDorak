//
//  GoodsItemView.swift
//  ChunsikDorak
//
//  Created by 김수아 on 11/24/23.
//

import Foundation
import SwiftUI

struct GoodsItemView: View {
    let goods: GetFoodListResponse.GoodsList

    var body: some View {
        HStack {
            Spacer()
            VStack(alignment: .center) {
                if let imagePath = goods.imagePath {
                    AsyncImage(url: URL(string: imagePath)!)
                        .frame(width: 200, height: 200)
                } else {
                    Image(uiImage: .logo)
                        .resizable()
                        .frame(width: 200, height: 200)
                }
                Text(goods.goodsNm)
                    .font(.title2)
                Text(goods.goodsDetail ?? "")
                    .font(.caption)
            }
            Spacer()
        }.padding()
    }
}

#Preview {
    GoodsItemView(goods: .init(
        stockId: "1700110844c329df29",
        orderMax: 99999,
        shopId: "16546720776c1a3ad1",
        goodsId: "1700110844a0837b72",
        regDt: "2023-11-16T05:00:44.039Z",
        orderCnt: 0,
        goodsNm: "돈까스김치나베",
        spaceId: "16528612054edce023",
        soldOutYn: "N",
        orderDt: "2023-11-24",
        promotionYn: "Y",
        categoryId: "1657590599eba87c1e",
        brandId: "1654672007c4b2dc22",
        modDt: "2023-11-21T05:10:59.054Z",
        goodsEngNm: "돈까스김치나베",
        imageSize: 0,
        surveyYn: nil,
        goodsDetail: "[메뉴]\n교자만두찜 / 수제.두부오리엔탈샐러드\n쌀밥 / 락교&오복지 / 깍두기\n샐러드&잡곡밥&둥글레차\n[원산지]\n돈까스-돈육:국내산\n[영양성분]\n탄수화물:141g / 단백질:47g / 지방:29g\n나트륨:2039mg / 열량:1,009kcal\n[매콤한 정도]\n매콤",
        goodsBillNm: "돈까스김치나베",
        imagePath: nil,
        tagId: nil,
        goodsEngDetail: "[메뉴]\n교자만두찜 / 수제.두부오리엔탈샐러드\n쌀밥 / 락교&오복지 / 깍두기\n샐러드&잡곡밥&둥글레차\n[원산지]\n돈까스-돈육:국내산\n[영양성분]\n탄수화물:141g / 단백질:47g / 열량:1,009kcal\n[매콤한 정도]\n매콤 지방:29g\n나트륨:2039mg /"
    ))
}
