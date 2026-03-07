cask "file-open-with" do
  version "1.0.1"
  sha256 "d95651f153374a16606ca050cc36832c82779634568250c41e3f06adec1bf374"

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
