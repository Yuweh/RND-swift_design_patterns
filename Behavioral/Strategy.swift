protocol Strategy {
    func execute()
}

class ConcreteStrategyA: Strategy {
    func execute() {
        print("Executing strategy A")
    }
}

class ConcreteStrategyB: Strategy {
    func execute() {
        print("Executing strategy B")
    }
}

class Context {
    var strategy: Strategy
    
    init(strategy: Strategy) {
        self.strategy = strategy
    }
    
    func setStrategy(strategy: Strategy) {
        self.strategy = strategy
    }
    
    func executeStrategy() {
        strategy.execute()
    }
}

let context = Context(strategy: ConcreteStrategyA())
context.executeStrategy() // Output: Executing strategy A

context.setStrategy(strategy: ConcreteStrategyB())
context.executeStrategy() // Output: Executing strategy B
