class Casama < Formula
  desc "Command-line client for Casama, the self-hostable home for AI bots with computers"
  homepage "https://casama.ai"
  version "0.1.3"
  # The CLI went from 0.8.0 back to 0.1.0 (version reset); this makes brew treat 0.1.x as newer.
  version_scheme 1
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/stackwares/casama-releases/releases/download/cli-v0.1.3/casama-0.1.3-darwin-arm64.tar.gz"
      sha256 "f26336f53b9b4a4a95ab6b9f9faa98b0a425439c7b5dc11b53e43269c9d19714"
    end
    on_intel do
      url "https://github.com/stackwares/casama-releases/releases/download/cli-v0.1.3/casama-0.1.3-darwin-x64.tar.gz"
      sha256 "74fd3bcb97101b690b8df4fd9af711ab25dfd9da9e93b06114a49c16ca350b8d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/stackwares/casama-releases/releases/download/cli-v0.1.3/casama-0.1.3-linux-arm64.tar.gz"
      sha256 "a0663991628ccfdd28397e3c14946e8925037da9b0ec4901a400ac3811c89ce8"
    end
    on_intel do
      url "https://github.com/stackwares/casama-releases/releases/download/cli-v0.1.3/casama-0.1.3-linux-x64.tar.gz"
      sha256 "169ebf846fa18b20ba2810f52ef9658b99513054b39fe372e5eed2869d6252f6"
    end
  end

  def install
    bin.install "casama"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/casama --version")
  end
end
