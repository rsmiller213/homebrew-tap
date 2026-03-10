cask "file-open-with" do
  version "1.0.1"
  sha256 "915601081a22ebea8076d82ecbe6937c1d9d2192d05c42b84085122acdb934c8"

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
