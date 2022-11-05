final class Observable<T> {
    typealias Observer = (T) -> Void
    var observer: Observer?
    
    var value: T {
        didSet {
            observer?(value)
        }
    }
    
    init(_ value: T) {
        self.value = value
    }
    
    func observe(_ observer: @escaping Observer) {
        self.observer = observer
        self.observer?(value)
    }
}
