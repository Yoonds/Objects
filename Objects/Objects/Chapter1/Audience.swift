//
//  Audience.swift
//  Objects
//
//  Created by YoonDaesung on 2023/01/26.
//

import Foundation

// 관람객 -> 가방소지
public class Audience {
    private var bag: Bag
    
    init(bag: Bag) {
        self.bag = bag
    }
    
    public func getBag() -> Bag {
        return bag
    }
}
