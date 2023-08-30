import Appwrite

let client = Client()
    .setEndpoint("https://cloud.appwrite.io/v1") // Your API Endpoint
    .setProject("5df5acd0d48c2") // Your project ID

let vcs = Vcs(client)

let detection = try await vcs.createRepositoryDetection(
    installationId: "[INSTALLATION_ID]",
    providerRepositoryId: "[PROVIDER_REPOSITORY_ID]"
)

