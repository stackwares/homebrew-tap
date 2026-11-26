class Casama < Formula
  desc "Command-line client for Casama, the self-hostable home for AI bots with computers"
  homepage "https://casama.ai"
  version "0.1.4"
  # The CLI went from 0.8.0 back to 0.1.0 (version reset); this makes brew treat 0.1.x as newer.
  version_scheme 1
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/casama-ai/casama-releases/releases/download/cli-v0.1.4/casama-0.1.4-darwin-arm64.tar.gz"
      sha256 "0547507b4d50c68305f0c612589b26441837969dfe78c618af66a64e8cf708e2"
    end
    on_intel do
      url "https://github.com/casama-ai/casama-releases/releases/download/cli-v0.1.4/casama-0.1.4-darwin-x64.tar.gz"
      sha256 "91c9e4acda1dc0ebfc9822c007ed08f0df6f0c4476b496cc51a94db87e65a2b9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/casama-ai/casama-releases/releases/download/cli-v0.1.4/casama-0.1.4-linux-arm64.tar.gz"
      sha256 "707cf1db68a1b2f62d8596e1e37b06dcae5178885212c491c86d93e339482497"
    end
    on_intel do
      url "https://github.com/casama-ai/casama-releases/releases/download/cli-v0.1.4/casama-0.1.4-linux-x64.tar.gz"
      sha256 "8152c32d52730350bebae5ad0d4c4229cd7d632267a33eb290df980055f4f857"
    end
  end

  def install
    bin.install "casama"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/casama --version")
  end
end
