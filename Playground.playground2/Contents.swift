import Foundation

// Protocolo para dispositivos
protocol Device {
    var name: String { get }
    func connect()
    func sendData(data: String)
}

// Estrutura para um smartphone
struct Smartphone: Device {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func connect() {
        print("Conectando o smartphone \(name) via Bluetooth")
    }
    
    func sendData(data: String) {
        print("Enviando dados do smartphone \(name): \(data)")
    }
}

// Classe para um laptop
class Laptop: Device {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func connect() {
        print("Conectando o laptop \(name) via Wi-Fi")
    }
    
    func sendData(data: String) {
        print("Enviando dados do laptop \(name): \(data)")
    }
}

// Função que realiza a comunicação entre dois dispositivos
func communicate(device1: Device, device2: Device, data: String) {
    device1.connect()
    device1.sendData(data: data)
    device2.connect()
    device2.sendData(data: data)
}

// Usando a função para comunicar um smartphone e um laptop
let smartphone = Smartphone(name: "iPhone")
let laptop = Laptop(name: "MacBook")
communicate(device1: smartphone, device2: laptop, data: "Dados importantes")

