cask "neuron-flame" do
  version "1.96"
  sha256 "b7b415ec834dd3049db745d84c6a3b78e9733f7f867eb4218c06eb4e7afa5440"

  url "https://neuronflame.com/downloads/Neuron%20Flame-#{version}.dmg"
  name "Neuron Flame"
  desc "Voice-to-text with 100% local transcription on the Neural Engine"
  homepage "https://neuronflame.com/"

  livecheck do
    url "https://neuronflame.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Neuron Flame.app"

  zap trash: [
    "~/Library/Application Support/com.neuronflame.app",
    "~/Library/Caches/com.neuronflame.app",
    "~/Library/HTTPStorages/com.neuronflame.app",
    "~/Library/Preferences/com.neuronflame.app.plist",
    "~/Library/WebKit/com.neuronflame.app",
  ]
end
