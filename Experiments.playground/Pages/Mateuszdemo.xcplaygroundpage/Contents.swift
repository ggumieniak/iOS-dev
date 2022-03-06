import Foundation

struct Logger {
    var log: (String) -> String
}

extension Logger {
    public static func impl() -> Self {
        Self { text in
            "This is kinda strange \(text)"
        }
    }
}


struct System {
    private let logger: Logger
    
    init(logger: Logger) {
        self.logger = logger
    }
    
    func createLog(message: String) -> String {
        logger.log(message)
    }
}


let system: System = .init(logger: .impl())

print(system.createLog(message: "Mateusz"))
