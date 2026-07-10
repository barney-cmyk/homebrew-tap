cask "neuron-flame" do
  version "1.94"
  sha256 "db459a57d93356f444d11f3069cea6807cf5192cca256c6e0057ce98cf7ed856"

  url "https://neuronflame.com/downloads/Neuron%20Flame-#{version}.dmg"
  name "Neuron Flame"
  desc "Voice-to-text for macOS with 100% local transcription on the Neural Engine"
  homepage "https://neuronflame.com/"

  livecheck do
    url "https://neuronflame.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Neuron Flame.app"

  zap trash: [
    "~/Library/Application Support/com.neuronflame.app",
    "~/Library/Caches/com.neuronflame.app",
    "~/Library/HTTPStorages/com.neuronflame.app",
    "~/Library/Preferences/com.neuronflame.app.plist",
    "~/Library/WebKit/com.neuronflame.app",
  ]
end
