import Foundation
import Kitura
import LoggerAPI
import HeliumLogger
import Application

do {

    HeliumLogger.use(LoggerMessageType.info)
    print("Sanity check, 0 means works: \(sanityCheck())")
    let app = try App()
    try app.run()

} catch let error {
    Log.error(error.localizedDescription)
}
