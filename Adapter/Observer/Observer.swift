//
//  Observer.swift
//  Adapter
//
//  Created by Alex Farcasanu on 25.05.2023.
//

import Foundation

protocol ObservableProtocol: AnyObject {
    var observers: [ObserverProtocol] { get set }

    func addObserver(_ observer: ObserverProtocol)
    func removeObserver(_ observer: ObserverProtocol)
    func notifyObservers(_ observers: [ObserverProtocol])
}

protocol ObserverProtocol {
    var id: Int { get set }
    func onValueChanged(_ value: Any?)
}

class Observable<T>: ObservableProtocol {

    internal var observers : [ObserverProtocol] = []

    init(value: T) {
        self.value = value
    }
    
    func notifyObservers(_ observers: [ObserverProtocol]) {
        observers.forEach({ $0.onValueChanged(value)})
    }
    
    var value: T {
        didSet {
            self.notifyObservers(self.observers)
        }
    }

    deinit { observers.removeAll() }

    func addObserver(_ observer: ObserverProtocol) {
        guard self.observers.contains(where: { $0.id == observer.id }) == false else { return }
        self.observers.append(observer)
    }

    func removeObserver(_ observer: ObserverProtocol) {
        guard let index = self.observers.firstIndex(where: { $0.id == observer.id }) else { return }
        self.observers.remove(at: index)
    }
    
    @IBAction func openInfo(_ sender: Any) {
    }
}
