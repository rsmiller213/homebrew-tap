cask "file-open-with" do
  version "1.0.2"
  sha256 "9d8c2a8e5aa824bf5306ecb8a36d557999803f9a3f0edc5bd010cdc6b151cda4"

  url "https://github.com/rsmiller213/file-open-with/releases/download/v#{version}/FileOpenWith-#{version}-macOS.zip"
  name "File Open With"
  desc "Native macOS app to view and change default file associations"
  homepage "https://github.com/rsmiller213/file-open-with"

  depends_on macos: ">= :ventura"

  app "File Open With.app"

  zap trash: [
    "~/Library/Preferences/com.randymiller.file-open-with.plist",
  ]
end
