//
//  FileStorage.swift
//  PokeMaster
//
//  Created by RAIN on 2021/4/29.
//

import Foundation


struct FileStorage<T: Codable> {

    var value: T?

    let directory: FileManager.SearchPathDirectory
    let fileName: String



}
