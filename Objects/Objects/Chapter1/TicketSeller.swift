//
//  TicketSeller.swift
//  Objects
//
//  Created by YoonDaesung on 2023/01/26.
//

import Foundation

// 판매원
public class TicketSeller {
    private var ticketOffice: TicketOffice
    
    init(ticketOffice: TicketOffice) {
        self.ticketOffice = ticketOffice
    }
    
    public func getTicketOffice() -> TicketOffice {
        return ticketOffice
    }
}
