//
//  Ticket.swift
//  Objects
//
//  Created by YoonDaesung on 2023/01/26.
//

import Foundation

// 티켓
public class Ticket {
    private var fee: Int
    
    init(fee: Int = 0) {
        self.fee = fee
    }
    
    public func getFee() -> Int {
        return fee
    }
}
