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
    @State var customer: GetCustomerInfoResponse? = nil

    var body: some View {
        NavigationSplitView {
            List {
                if let customer {
                    Text("\(customer.customerInfo.customerNm)님 환영합니다!")
                        .font(.headline)
                }

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
                    self.customer = customer
                } catch {
                    print(error)
                }
            }
            .navigationTitle("춘식도락(\(customer?.customerInfo.company ?? ""))")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        UserDefaults.standard.setValue(nil, forKey: "accessToken")
                    } label: {
                        Text("로그아웃")
                    }
                }
            }
        } detail: {
            Text("Main")
        }
    }
}

#Preview {
    MainView()
}
