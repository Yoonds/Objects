//
//  TicketOffice.swift
//  Objects
//
//  Created by YoonDaesung on 2023/01/26.
//

import Foundation

// 매표소
public class TicketOffice {
    private var amount: Int
    private var tickets = [Ticket]()
    
    init(amount: Int, tickets: [Ticket]) {
        self.amount = amount
        self.tickets.append(contentsOf: tickets)
    }
    
    // 티켓 판매
    public func getTicket() -> Ticket {
        return tickets.remove(at: 0)
    }
    
    // 판매금액 차감
    public func minusAmount(amount: Int){
        self.amount -= amount
    }
    
    // 판매금액 더함
    public func plusAmount(amount: Int) {
        self.amount += amount
    }
}
