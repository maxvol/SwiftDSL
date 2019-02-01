# SwiftDSL
Core method(s) for writing Swift DSL.

Is serves as dependency for:
* https://github.com/maxvol/CoreAnimationDSL/
* https://github.com/maxvol/GameplayKitDSL/
* https://github.com/maxvol/SpriteKitDSL/
* https://github.com/maxvol/SceneKitDSL/
* https://github.com/maxvol/ARKitDSL/

At the moment only one method `.apply()` is defined.

It allows executing closures on objects of compliant classes like that:
```
// make class compliant
extension UIBezierPath: DSL { }

// use DSL
let line = UIBezierPath().apply {
    $0.move(to: lowerRightCorner)
    $0.addLine(to: upperLeftCorner)
    $0.addLine(to: lowerLeftCorner)
    $0.addLine(to: center)
}
```
