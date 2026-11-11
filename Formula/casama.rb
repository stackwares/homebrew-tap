class Casama < Formula
  desc "Command-line client for Casama, the self-hostable home for AI bots with computers"
  homepage "https://casama.ai"
  version "0.8.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/stackwares/casama-releases/releases/download/cli-v0.8.0/casama-0.8.0-darwin-arm64.tar.gz"
      sha256 "507d44702f65137799ba57740becb7a53ec93ea01ef54602d9df06c65ea68a6a"
    end
    on_intel do
      url "https://github.com/stackwares/casama-releases/releases/download/cli-v0.8.0/casama-0.8.0-darwin-x64.tar.gz"
      sha256 "35a52daee857ecc6e783b83b45688ed063d62c635dc74b3efb824b51d03cf271"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/stackwares/casama-releases/releases/download/cli-v0.8.0/casama-0.8.0-linux-arm64.tar.gz"
      sha256 "8b96e412566bed4d6ca20003d9d266a2e1c477362ca3a49086637eb5d2a4daca"
    end
    on_intel do
      url "https://github.com/stackwares/casama-releases/releases/download/cli-v0.8.0/casama-0.8.0-linux-x64.tar.gz"
      sha256 "1e2818578fa550faccba49638fdac286d8c7ca44559daa73757786a2924c743c"
    end
  end

  def install
    bin.install "casama"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/casama --version")
  end
end
