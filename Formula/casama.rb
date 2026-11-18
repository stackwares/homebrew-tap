class Casama < Formula
  desc "Command-line client for Casama, the self-hostable home for AI bots with computers"
  homepage "https://casama.ai"
  version "0.1.2"
  # The CLI went from 0.8.0 back to 0.1.0 (version reset); this makes brew treat 0.1.x as newer.
  version_scheme 1
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/stackwares/casama-releases/releases/download/cli-v0.1.2/casama-0.1.2-darwin-arm64.tar.gz"
      sha256 "597e9a32516f2f6f4439719f014021c0bb4160b4547a6c3e4add44634846ecfd"
    end
    on_intel do
      url "https://github.com/stackwares/casama-releases/releases/download/cli-v0.1.2/casama-0.1.2-darwin-x64.tar.gz"
      sha256 "6cb6b1a93ff2fb57ae4b5c7106373bbad1f7b7458e810bcbde8f2d430560a05c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/stackwares/casama-releases/releases/download/cli-v0.1.2/casama-0.1.2-linux-arm64.tar.gz"
      sha256 "e42b08508fcbf56d72067d2c3d253398feeaebccf040a2d556b11ff778b32318"
    end
    on_intel do
      url "https://github.com/stackwares/casama-releases/releases/download/cli-v0.1.2/casama-0.1.2-linux-x64.tar.gz"
      sha256 "45d092eb52738a4e3a70fe47aef8f8b9eb7770ba2daee47d8b5ac771383d1059"
    end
  end

  def install
    bin.install "casama"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/casama --version")
  end
end
