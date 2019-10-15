//
//  CKManager.swift
//  Waterfy
//
//  Created by Diuli Nobre on 15/10/19.
//  Copyright © 2019 Diuli Nobre. All rights reserved.
//

import Foundation
import CloudKit


public final class CKManager {
    public static let shared = CKManager()
    
    public private(set) var container = CKContainer(identifier: "iCloud.diuli.nobre.Waterfy")
    
    //internal lazy var publicDatabase = self.container.publicCloudDatabase
    internal lazy var privateDatabase = self.container.privateCloudDatabase
    
    private init() { }
    
    public func iCloudUserID(completion: @escaping (Result<String, Error>) -> Void) {
        container.fetchUserRecordID { recordID, error in
            guard let recordID = recordID else {
                completion(.failure(error ?? CKManagerError.unknown))
                return
            }
            completion(.success(recordID.recordName))
        }
    }
    
    public func save(_ record: CKRecord, completion: @escaping (Result<CKRecord, Error>) -> Void) {
        privateDatabase.save(record) { (record, error) in
            guard let record = record else {
                completion(.failure(error ?? CKManagerError.unknown))
                return
            }
            completion(.success(record))
        }
    }
}

enum CKManagerError: Error {
    case unknown
    case noAsset(record: CKRecord)
    case invalidFileURL(asset: CKAsset)
    case invalidData
    //case userWithoutID(user: User)
}

extension CKManagerError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .unknown:
            return "Unknown error during CloudKit operation."
        case .noAsset(let record):
            return "\(record) has no CKAsset in 'asset' key."
        case .invalidFileURL(let asset):
            return "Invalid fileURL for \(asset)."
        case .invalidData:
            return "Data is not a valid image data."
//        case .userWithoutID(let user):
//            return "\(user) has no CKRecord.ID"
        }
    }
}
