//
//  BasicCommand.swift
//  Setup
//
//  Created by 孙燕飞 on 2016/10/16.
//
//

import Foundation
import Commandant
import Result

public struct BasicOptions<ClientError: Error>: OptionsProtocol {
    
    fileprivate let verb: String?
    
    private init(verb: String?) {
        self.verb = verb
    }
    
    private static func create(_ verb: String) -> BasicOptions {
        return self.init(verb: (verb == "" ? nil : verb))
    }
    
    public static func evaluate(_ m: CommandMode) -> Result<BasicOptions, CommandantError<ClientError>> {
        return create
            <*> m <| Argument(defaultValue: "", usage: "the command to display help for")
    }
    
}

struct BasicCommand<ClientError: Error> : CommandProtocol {
    
    public typealias Options = BasicOptions<ClientError>
    
    public let verb = "help"
    public let function = "Display general or command-specific help"
    
    private let registry: CommandRegistry<ClientError>
    
    public init(registry: CommandRegistry<ClientError>) {
        self.registry = registry
    }
    
    public func run(_ options: Options) -> Result<(), ClientError> {
        if let verb = options.verb {
            if let command = self.registry[verb] {
                print(command.function)
                if let usageError = command.usage() {
                    print("\n\(usageError)")
                }
                return .success(())
            } else {
                fputs("Unrecognized command: '\(verb)'\n", stderr)
            }
        }
        
        print("Available commands:\n")
        
        let maxVerbLength = self.registry.commands.map { $0.verb.characters.count }.max() ?? 0
        
        for command in self.registry.commands {
            let padding = repeatElement(Character(" "), count: maxVerbLength - command.verb.characters.count)
            print("   \(command.verb)\(String(padding))   \(command.function)")
        }
        
        return .success(())
    }
    
}

