cask "casama" do
  version "0.1.0"
  sha256 "51b76171706b0f7b0b05064b3ad5fa4959dfcf50e609e208fd637a6769904ba8"

  url "https://github.com/stackwares/casama-releases/releases/download/v#{version}/Casama-#{version}-macos.dmg"
  name "Casama"
  desc "Self-hostable home for AI teammates with their own computers"
  homepage "https://casama.ai/"

  livecheck do
    url "https://raw.githubusercontent.com/stackwares/casama-releases/main/appcast-macos.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "Casama.app"

  zap trash: [
    "~/Library/Application Support/ai.casama.app",
    "~/Library/Caches/ai.casama.app",
    "~/Library/Caches/ai.casama.app.sparkle",
    "~/Library/Containers/ai.casama.app",
    "~/Library/Containers/ai.casama.app.CasamaWidgetsMac",
    "~/Library/Group Containers/V8V5US964Z.ai.casama.app",
    "~/Library/Preferences/ai.casama.app.plist",
    "~/Library/Saved Application State/ai.casama.app.savedState",
  ]
end
