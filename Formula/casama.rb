class Casama < Formula
  desc "Command-line client for Casama, the self-hostable home for AI bots with computers"
  homepage "https://casama.ai"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/stackwares/casama-releases/releases/download/cli-v0.1.0/casama-0.1.0-darwin-arm64.tar.gz"
      sha256 "68f5e3ab6b101f4c3fc1ef13ccb0678bd84140d1f11d1162a39514c58d6e7a87"
    end
    on_intel do
      url "https://github.com/stackwares/casama-releases/releases/download/cli-v0.1.0/casama-0.1.0-darwin-x64.tar.gz"
      sha256 "fb424a9413057a4931bfb261cdff692180bb6059c80d1fadca8671893e2724a0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/stackwares/casama-releases/releases/download/cli-v0.1.0/casama-0.1.0-linux-arm64.tar.gz"
      sha256 "0a908b7b20b44726c6824c240dbad1c5fc0f299fa27817baab37ec44a7bdfb70"
    end
    on_intel do
      url "https://github.com/stackwares/casama-releases/releases/download/cli-v0.1.0/casama-0.1.0-linux-x64.tar.gz"
      sha256 "83b5b82ae72d07e3dc4cd57b57f15549d54034e0eb70d1f4765478760789b6af"
    end
  end

  def install
    bin.install "casama"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/casama --version")
  end
end
