class Casama < Formula
  desc "Command-line client for Casama, the self-hostable home for AI bots with computers"
  homepage "https://casama.ai"
  version "0.1.1"
  # The CLI went from 0.8.0 back to 0.1.0 (version reset); this makes brew treat 0.1.x as newer.
  version_scheme 1
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/stackwares/casama-releases/releases/download/cli-v0.1.1/casama-0.1.1-darwin-arm64.tar.gz"
      sha256 "be66ee7c756b9d065b0a33055d46b1a2148f2c2b0e60a55623e3d9d6db1d971b"
    end
    on_intel do
      url "https://github.com/stackwares/casama-releases/releases/download/cli-v0.1.1/casama-0.1.1-darwin-x64.tar.gz"
      sha256 "42c2071f3830a70dc02e76c6960eb5f2fffd9522d6a90c20a2c8e29282692a58"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/stackwares/casama-releases/releases/download/cli-v0.1.1/casama-0.1.1-linux-arm64.tar.gz"
      sha256 "0ff31c95f2e90deb1939ed72615d437c1e0eddc5e9563ee3d75cbe96391385b5"
    end
    on_intel do
      url "https://github.com/stackwares/casama-releases/releases/download/cli-v0.1.1/casama-0.1.1-linux-x64.tar.gz"
      sha256 "ba9c9244385b47b22cc750e51f129388f9c8466cc5274c196115cc4286541f8c"
    end
  end

  def install
    bin.install "casama"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/casama --version")
  end
end
