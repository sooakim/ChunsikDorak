//
//  MainView.swift
//  ChunsikDorak
//
//  Created by 김수아 on 11/24/23.
//

import Foundation
import SwiftUI

struct MainView: View {
    @State var goodsList: [GetFoodListResponse.GoodsList] = []

    var body: some View {
        NavigationSplitView {
            List {
                ForEach(goodsList, id: \.goodsId) { goods in
                    GoodsItemView(goods: goods)
                        .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
                }
            }.task {
                do {
                    let confirmToken = try await CommonRepository.confirmToken(request: .init())
                    let customer = try await CustomerRepository.getCustomerInfo(request: .init(customerId: confirmToken.loginInfo.customerId))
                    let shopInfo = try await ShopRepository.getShopInfo(request: .init(shopId: customer.customerInfo.viewShopId))
                    let goods = try await FoodRepository.getFoodList(request: .init(brandId: shopInfo.shopInfo.brandId, shopId: shopInfo.shopInfo.shopId))
                    goodsList = goods.goodsList
                } catch {
                    print(error)
                }
            }.navigationTitle("춘식도락")
        } detail: {
            Text("Main")
        }
    }
}

#Preview {
    MainView()
}
