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
