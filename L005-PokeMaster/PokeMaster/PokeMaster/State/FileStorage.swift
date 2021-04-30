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


    init(directory: FileManager.SearchPathDirectory, fileName: String) {
        value = try? FileHelper.loadJSON(
            from: directory,
            fileName: fileName
        )
        self.directory = directory
        self.fileName = fileName
    }

}
