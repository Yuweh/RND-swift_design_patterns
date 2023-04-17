# Behavioral Design Patterns

Sure, here are some examples of behavioral design patterns in Swift:

Behavioral Design Patterns
1. Observer
Definition
The Observer pattern is a behavioral design pattern that defines a one-to-many dependency between objects, so that when one object changes state, all its dependents are notified and updated automatically.

Pros
Allows for decoupling of objects in a system.
Provides a way to notify multiple objects of changes to a single object.
Cons
Can add additional complexity to the codebase.
Careful management of observers is required to prevent memory leaks.
Code Sample

```
protocol Observer: AnyObject {
    func update(subject: Subject)
}

protocol Subject {
    var observers: [Observer] { get set }
    
    func attach(observer: Observer)
    func detach(observer: Observer)
    func notify()
}

class ConcreteSubject: Subject {
    var state: Int = 0
    var observers = [Observer]()
    
    func attach(observer: Observer) {
        observers.append(observer)
    }
    
    func detach(observer: Observer) {
        if let index = observers.firstIndex(where: { $0 === observer }) {
            observers.remove(at: index)
        }
    }
    
    func notify() {
        observers.forEach { observer in
            observer.update(subject: self)
        }
    }
    
    func setState(state: Int) {
        self.state = state
        notify()
    }
}

class ConcreteObserver: Observer {
    func update(subject: Subject) {
        if let concreteSubject = subject as? ConcreteSubject {
            print("Observer received notification. New state: \(concreteSubject.state)")
        }
    }
}

let subject = ConcreteSubject()
let observerA = ConcreteObserver()
let observerB = ConcreteObserver()

subject.attach(observer: observerA)
subject.attach(observer: observerB)

subject.setState(state: 1)
subject.setState(state: 2)

subject.detach(observer: observerA)

subject.setState(state: 3)


```



2. Strategy
Definition
The Strategy pattern is a behavioral design pattern that defines a family of algorithms, encapsulates each one, and makes them interchangeable. It lets the algorithm vary independently from clients that use it.

Pros
Provides a way to encapsulate algorithms in a system.
Allows for algorithms to be swapped out at runtime.
Cons
Can add additional complexity to the codebase.
Careful management of the context object is required to prevent misuse.
Code Sample


```

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


```

















