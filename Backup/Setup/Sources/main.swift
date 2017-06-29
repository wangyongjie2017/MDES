import Commandant
import Foundation


// MARK: - Start
let commands = CommandRegistry<MDESError>()

// MARK: - Register
let basicCommand = BasicCommand(registry: commands)
commands.register(basicCommand)

// MARK: - Run
var arguments = CommandLine.arguments
assert(arguments.count >= 1)
arguments.remove(at: 0)

if let verb = arguments.first {
    print(verb)
    arguments.remove(at: 0)
    if let result = commands.run(command: verb, arguments: arguments) {
        if let error = result.error {
            print(error)
        } else {
            print("success")
        }
    } else {
        
    }
}
