import Foundation

public enum Provider: String, Codable {
    case amazon = "amazon"
    case apple = "apple"
    case auth0 = "auth0"
    case authentik = "authentik"
    case autodesk = "autodesk"
    case bitbucket = "bitbucket"
    case bitly = "bitly"
    case box = "box"
    case dailymotion = "dailymotion"
    case discord = "discord"
    case disqus = "disqus"
    case dropbox = "dropbox"
    case etsy = "etsy"
    case facebook = "facebook"
    case github = "github"
    case gitlab = "gitlab"
    case google = "google"
    case linkedin = "linkedin"
    case microsoft = "microsoft"
    case notion = "notion"
    case oidc = "oidc"
    case okta = "okta"
    case paypal = "paypal"
    case paypalSandbox = "paypalSandbox"
    case podio = "podio"
    case salesforce = "salesforce"
    case slack = "slack"
    case spotify = "spotify"
    case stripe = "stripe"
    case tradeshift = "tradeshift"
    case tradeshiftBox = "tradeshiftBox"
    case twitch = "twitch"
    case wordpress = "wordpress"
    case yahoo = "yahoo"
    case yammer = "yammer"
    case yandex = "yandex"
    case zoom = "zoom"
    case mock = "mock"

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(rawValue)
    }
}
