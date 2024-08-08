import Vapor

func routes(_ app: Application) throws {
    app.get { req async in
        "It works!"
    }

    app.get("hello") { req async -> String in
        "Hello, world!"
    }

    app.get("crash") { req -> HTTPStatus in
        let array = [Int]()
        let number = array[0]
        return .ok
    }
}
