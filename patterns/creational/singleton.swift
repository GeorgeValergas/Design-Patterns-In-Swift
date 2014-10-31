 /*
💍 Singleton
------------
The singleton pattern ensures that only one object of a particular class is ever created. 
All further references to objects of the singleton class refer to the same underlying instance.
*/

class SingletonClass {
    class var shared : SingletonClass {

        struct Static {
            static let instance : SingletonClass = SingletonClass()
        }

        return Static.instance
    }
}

/*
Usage:
*/

let instance = SingletonClass.shared