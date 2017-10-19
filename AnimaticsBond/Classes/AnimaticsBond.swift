import Animatics
import ReactiveKit

public protocol BoolType{
    var boolValue: Bool { get }
}

extension Bool: BoolType{
    public var boolValue: Bool { return self }
}

public extension Signal where Element: BoolType{
    public func animateTrue(_ animator: AnimaticsReady, initiallyPerform: Bool? = true){
        if let ip = initiallyPerform{
            ip ? animator.performWithoutAnimation() : animator.reversedAnimation().performWithoutAnimation()
        }
        _ = observeNext { $0.boolValue ? animator.animate() : animator.reversedAnimation().animate() }
    }
    
    public func animateFalse(_ animator: AnimaticsReady, initiallyPerform: Bool? = false){
        if let ip = initiallyPerform{
            !ip ? animator.performWithoutAnimation() : animator.reversedAnimation().performWithoutAnimation()
        }
        _ = observeNext { !$0.boolValue ? animator.animate() : animator.reversedAnimation().animate() }
    }
}

public extension Signal{
    public func animate(_ animator: AnimaticsReady){
        _ = observeNext { _ in animator.animate() }
    }
}

