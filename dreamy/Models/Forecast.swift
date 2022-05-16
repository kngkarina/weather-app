import Foundation

struct Forecast: Codable {
    struct Current: Codable {
        let temp: Double
        struct Weather: Codable {
            let main: String
            let description: String
        }
        let weather: [Weather]
    }
    
    struct Hourly: Codable {
        let temp: Double
        struct Weather: Codable {
            let main: String
            let description: String
        }
    }
    
    struct Daily: Codable {
        let date: Date
        struct Temp: Codable {
            let min: Double
            let max: Double
        }
        let temp: Temp
        struct Weather: Codable {
            let main: String
            let description: String
        }
        let weather: [Weather]
    }
    
    let current: [Current]
    let hourly: [Hourly]
    let daily: [Daily]
}
