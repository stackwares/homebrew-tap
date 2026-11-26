class Casama < Formula
  desc "Command-line client for Casama, the self-hostable home for AI bots with computers"
  homepage "https://casama.ai"
  version "0.1.5"
  # The CLI went from 0.8.0 back to 0.1.0 (version reset); this makes brew treat 0.1.x as newer.
  version_scheme 1
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/casama-ai/casama-releases/releases/download/cli-v0.1.5/casama-0.1.5-darwin-arm64.tar.gz"
      sha256 "ca9361bf96581695494ec4db53f197d1ea88950ea8ebf0c89342437b51e97617"
    end
    on_intel do
      url "https://github.com/casama-ai/casama-releases/releases/download/cli-v0.1.4/casama-0.1.4-darwin-x64.tar.gz" # 0.1.5 has no Intel Mac build
      sha256 "91c9e4acda1dc0ebfc9822c007ed08f0df6f0c4476b496cc51a94db87e65a2b9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/casama-ai/casama-releases/releases/download/cli-v0.1.5/casama-0.1.5-linux-arm64.tar.gz"
      sha256 "cb94c6e4bbbdcc55d9c2e5aacaf0ad4bb1986382b8d7f39377474c85eff5ff27"
    end
    on_intel do
      url "https://github.com/casama-ai/casama-releases/releases/download/cli-v0.1.5/casama-0.1.5-linux-x64.tar.gz"
      sha256 "a52bbd1bef716d60b74bb5b314c63b0f154b2eaf536993367c16766c314eb617"
    end
  end

  def install
    bin.install "casama"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/casama --version")
  end
end
