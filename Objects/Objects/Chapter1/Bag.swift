//
//  Bag.swift
//  Objects
//
//  Created by YoonDaesung on 2023/01/26.
//

import Foundation

// 관람객의 가방(소지품)
public class Bag {
    private var amount: Int
    private var invitation = Invitation()
    private var ticket = Ticket()
    
    // 인스턴스 생성시에 초대장 여부, 소지금액 판단
    init(invitation: Invitation, amount: Int) {
        self.invitation = invitation
        self.amount = amount
    }
    
    // 초대장 보유 여부판단
    public func hasInvitation() -> Bool {
        return invitation != nil
    }
    
    // 티켓 소유 판단
    public func hasTicket() -> Bool {
        return ticket != nil
    }
    
    // 초대장을 티켓으로 변환
    public func setTicket(ticket: Ticket) {
        self.ticket = ticket
    }
    
    // 현금 감소
    public func minusAmount() {
        self.amount -= amount
    }

    // 현금 증가
    public func plusAmount() {
        self.amount += amount
    }
}
