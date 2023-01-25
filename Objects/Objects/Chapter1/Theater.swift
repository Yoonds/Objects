//
//  Theater.swift
//  Objects
//
//  Created by YoonDaesung on 2023/01/26.
//

import Foundation

// 극장
public class Theater {
    private var ticketSeller: TicketSeller
    
    init(ticketSeller: TicketSeller) {
        self.ticketSeller = ticketSeller
    }
    
    // 입장
    public func enter(audience: Audience) {
        if audience.getBag().hasInvitation() {
            var ticket: Ticket = ticketSeller.getTicketOffice().getTicket()
            audience.getBag().setTicket(ticket: ticket)
        } else {
            var ticket: Ticket = ticketSeller.getTicketOffice().getTicket()
            audience.getBag().minusAmount(amount: ticket.getFee())
            ticketSeller.getTicketOffice().plusAmount(amount: ticket.getFee())
            audience.getBag().setTicket(ticket: ticket)
        }
    }
}
