/*
👷 Builder
----------
The builder pattern is used to create complex objects with constituent parts that must be created in the same order or using a specific algorithm. An external class controls the construction algorithm.
*/

protocol ThreeDimensions {
    var x: Double? {get}
    var y: Double? {get}
    var z: Double? {get}
}

class Point : ThreeDimensions {
    var x: Double?
    var y: Double?
    var z: Double?

    typealias PointBuilderClosure = (Point) -> ()

    init(buildClosure: PointBuilderClosure) {
        buildClosure(self)
    }
}

/*
Usage:
*/

let fancyPoint = Point { point in
    point.x = 0.1
    point.y = 0.2
    point.z = 0.3
}

fancyPoint.x
fancyPoint.y
fancyPoint.z