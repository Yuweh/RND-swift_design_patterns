protocol Product {
    func use()
}

class ConcreteProductA: Product {
    func use() {
        print("Using ConcreteProductA")
    }
}

class ConcreteProductB: Product {
    func use() {
        print("Using ConcreteProductB")
    }
}

class Factory {
    func createProduct(type: Int) -> Product {
        switch type {
        case 1:
            return ConcreteProductA()
        case 2:
            return ConcreteProductB()
        default:
            fatalError("Invalid product type")
        }
    }
}

let factory = Factory()
let productA = factory.createProduct(type: 1)
let productB = factory.createProduct(type: 2)

productA.use() // Output: Using ConcreteProductA
productB.use() // Output: Using ConcreteProductB


