//
//  Drink.swift
//  Waterfy
//
//  Created by Diuli Nobre on 15/10/19.
//  Copyright © 2019 Diuli Nobre. All rights reserved.
//

import CloudKit

public class Drink {
    
    public private(set) var record: CKRecord
    
    public var id: CKRecord.ID? {
        return record.recordID
    }
    
    public var potion: Int? {
        set {
            record["potion"] = newValue
        }
        get {
            return record["potion"] as? Int
        }
    }
    
    public var date: Date? {
        get {
            return record.creationDate
        }
    }
    
    public init(potion: Int) {
        record = CKRecord(recordType: "Drink")
        self.potion = potion
    }
    
    public init(record: CKRecord) {
        self.record = record
    }
}
