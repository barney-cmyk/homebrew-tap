cask "neuron-flame" do
  version "1.95"
  sha256 "c88a9cf3480810d982df4827684c0c0b7f0c57d9103c03b56440e2c892052b7a"

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
