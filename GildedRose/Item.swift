//
//  Item.swift
//  GildedRose
//
//  Created by Tom Heinan on 8/31/15.
//  Copyright © 2015 Tom Heinan. All rights reserved.
//

public struct Item: Equatable {
    
    var name: String
    var sellIn: Int
    var quality: Int
    public static func increaseQuality(item: Item, by: Int = 1) -> Item {
        var item = item
        if item.sellIn < 1 {
            item.quality = item.quality + 1
        }
        item.quality = item.quality + 1
        item.quality = item.quality > 50 ? 50 : item.quality
        return item
    }
    
    public static func specialIncrease(item: Item) -> Item {
        var item = item
        if(item.sellIn < 1){
            item.quality = 0
        }
        else if item.sellIn < 6 {
            item.quality = item.quality + 3
        }
        else if item.sellIn < 11  {
            item.quality  = item.quality + 2
        } else {
            item.quality = item.quality + 1
        }
        item.quality = item.quality > 50 ? 50 : item.quality
        return item
    }
    
    public static func decreaseQuality(item: Item, by: Int = 1) -> Item {
        var item = item
        if(item.sellIn < 1){
            item.quality = item.quality - by
        }
        item.quality = item.quality - by
        item.quality = item.quality < 0 ? 0 : item.quality
        return item
        
        
    }
    
}

public func ==(lhs: Item, rhs: Item) -> Bool {
    return lhs.name == rhs.name && lhs.sellIn == rhs.sellIn && lhs.quality == rhs.quality
}
