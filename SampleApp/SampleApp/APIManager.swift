//
//  TestingManager.swift
//  SampleApp
//
//  Created by primesoft on 02/05/18.
//  Copyright © 2018 primesoft. All rights reserved.
//

import UIKit

public class APIManager: NSObject {
    
    //Contain the channel count
    public var channelCount = "10"
    
    //Contain the category count
    private var categoryCount = "12"
    
    /*
     * return the channel count string
     **/
    public func getChannelData() -> String {
        return "Chanel count" + channelCount
    }
    
    /*
     * return the category count string
     **/
    public func getCategoriesData() -> String {
        return "Category count" + categoryCount
    }
    
}
