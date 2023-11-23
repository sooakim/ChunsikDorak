//
//  Network.swift
//  ChunsikDorak
//
//  Created by 김수아 on 11/24/23.
//

import Foundation

enum Network {
    static let apiKey = """
    bCAoIUYQ8N1CZ4rMDPdvJ54HqeZwfgeF96NCYJhQ
    """

    static let commonRequestHeaders = [
        "X-Api-Key": apiKey,
        "Content-Type": "application/json",
    ]
}
