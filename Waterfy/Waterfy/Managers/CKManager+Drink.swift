//
//  CKManager+Drink.swift
//  Waterfy
//
//  Created by Diuli Nobre on 15/10/19.
//  Copyright © 2019 Diuli Nobre. All rights reserved.
//

import CloudKit

extension CKManager {
    
    /// FetchAllDrinks
    /// - Parameter completion: 'Result' with a array of Drinks, in case of success or a error, otherwise
    public func fetchAllDrinks(completion: @escaping (Result<[Drink], Error>) -> Void) {
        let query = CKQuery(recordType: "Drink", predicate: NSPredicate(value: true))
        self.privateDatabase.perform(query, inZoneWith: nil) { (records, error) in
            guard let records = records else {
                completion(.failure(error ?? CKManagerError.unknown))
                return
            }
            let drinks = records.map({ (record) -> Drink in
                return Drink(record: record)
            })
            completion(.success(drinks))
        }
    }
    
    public func saveDrink(drink: Drink, completion:  @escaping (Result<Drink, Error>) -> Void) {
        CKManager.shared.save(drink.record) { (result) in
            switch result {
            case .success(_):
                completion(.success(drink))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
