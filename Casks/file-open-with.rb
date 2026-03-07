cask "file-open-with" do
  version "1.0.0"
  sha256 "1adc53e1693992022343e27054d9e0e5726e5db1aec07e04fa444dbf2e2e3372"

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
