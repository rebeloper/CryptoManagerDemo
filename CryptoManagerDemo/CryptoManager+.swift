//
//  CryptoManager+.swift
//  CryptoManagerDemo
//
//  Created by Alex Nagy on 09/11/2020.
//

import Foundation

//extension CryptoManager {
//    
//    fileprivate static let masterPasswordKey = "masterPassword"
//    
//    static func setMasterPassword(_ password: String, completion: @escaping (Result<Bool, Error>) -> ()) {
////        encrypt(string: password) { (result) in
////            switch result {
////            case .success(let encrytpedPasswordData):
////                CryptoManager.setObject(encrytpedPasswordData, forKey: CryptoManager.masterPasswordKey, completion: completion)
////            case .failure(let err):
////                completion(.failure(err))
////            }
////        }
//        
//        // OR
////        if let encrytpedPasswordData = password.encrypted() {
////            CryptoManager.setObject(encrytpedPasswordData, forKey: CryptoManager.masterPasswordKey, completion: completion)
////        } else {
////            completion(.failure(CryptoManagerError.noEncryptedData))
////        }
//        
//        // OR
//        password.encrypt(with: masterPasswordKey, completion: completion)
//    }
//    
//    static func getMasterPassword(completion: @escaping (Result<String, Error>) -> ()) {
//        doesMasterPasswordExist { (result) in
//            switch result {
//            case .success(let exists):
//                if exists {
//                    
////                    CryptoManager.getObject(for: masterPasswordKey) { (result) in
////                        switch result {
////                        case .success(let encryptedData):
////                            decryptString(fromSealedBoxData: encryptedData, completion: completion)
////                            // OR
//////                            if let decryptedPassword = encryptedData.decryptedString() {
//////                                completion(.success(decryptedPassword))
//////                            } else {
//////                                completion(.failure(CryptoManagerError.noDecryptedData))
//////                            }
////                        case .failure(let err):
////                            completion(.failure(err))
////                        }
////                    }
//                    
//                    // OR
//                    if let decryptedPassword = masterPasswordKey.decrypted_iCloudKeyToString() {
//                        completion(.success(decryptedPassword))
//                    } else {
//                        completion(.failure(CryptoManagerError.noDecryptedData))
//                    }
//                } else {
//                    completion(.failure(CryptoManagerError.noMasterPasswordKey))
//                }
//            case .failure(let err):
//                completion(.failure(err))
//            }
//        }
//    }
//    
//    static func deleteMasterPassword(completion: @escaping (Result<Bool, Error>) -> ()) {
//        CryptoManager.removeObject(with: masterPasswordKey, completion: completion)
//    }
//    
//    static func doesMasterPasswordExist(completion: @escaping (Result<Bool, Error>) -> ()) {
//        CryptoManager.doesKeyExist(masterPasswordKey, completion: completion)
//    }
//}
//
//extension CryptoManagerError {
//    static let noMasterPasswordKey = NSError(domain: "No Master Password Key", code: 206, userInfo: nil)
//}
