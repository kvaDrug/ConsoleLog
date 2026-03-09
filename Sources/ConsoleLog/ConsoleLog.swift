//
//  Log.swift
//  ConsoleLog
//
//  Created by Uladzimir Kelin on 15.11.24.
//

import Foundation
import os.log

// TODO: Logger has limitation of 1kb per message. https://stackoverflow.com/q/79245760/1746142
// Need to find a way to split the message and send multiple logs.

/// A strong log that will print not only when running in  Xcode, but also in Console app. Will only print in DEBUG config.
/// Usefull for situations when the regular `print` will not work. For example on Apple Watch, or
/// when running the app in "Wait for executable to be launched"
/// mode: https://stackoverflow.com/q/77149509/1746142
/// or attaching to process.
nonisolated
    public func debugLog(_ items: Any..., separator: String = " ", terminator: String = "\n")
{
    #if DEBUG
    let descriptions = items.map { "\($0)" }
    let message = descriptions.joined(separator: separator).appending(terminator)
    let logger = Logger(subsystem: "com.ajtech.watchface.debugLog", category: "Debug")
    logger.notice("\(message, privacy: .public)")
    #endif
}

/// A strong log that will print not only when running in  Xcode, but also in Console app. For Release builds, if we want to output
/// some debug information there. DO NOT EXPOSE ANY PRIVATE DATA!
nonisolated
    public func consoleLog(_ items: Any..., separator: String = " ", terminator: String = "\n")
{
    let descriptions = items.map { "\($0)" }
    let message = descriptions.joined(separator: separator).appending(terminator)
    let logger = Logger(subsystem: "com.ajtech.watchface.consoleLog", category: "Public")
    logger.notice("\(message, privacy: .public)")
}
