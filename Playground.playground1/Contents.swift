import Foundation

// Classe para representar um produto
class Product {
    var name: String
    var price: Double
    
    init(name: String, price: Double) {
        self.name = name
        self.price = price
    }
    
    func calculateTax() -> Double {
        return price * 0.10
    }
}

// Coleção de produtos
var products: [Product] = []

// Adicionando produtos à coleção
let product1 = Product(name: "Laptop", price: 1000.0)
let product2 = Product(name: "Smartphone", price: 500.0)
products.append(product1)
products.append(product2)

// Função que calcula o total do carrinho de compras
func calculateTotal(products: [Product]) -> Double {
    var total = 0.0
    for product in products {
        total += product.price
    }
    return total
}

// Imprimindo o total e os nomes dos produtos
print("Produtos:")
for product in products {
    print("Nome: \(product.name), Preço: \(product.price), Imposto: \(product.calculateTax())")
}
print("Total do Carrinho: \(calculateTotal(products: products))")
