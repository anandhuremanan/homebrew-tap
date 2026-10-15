# Homebrew formula for webscanner, written by cli/release/manifests.sh for
# each release. Install with: brew install anandhuremanan/tap/webscanner
class Webscanner < Formula
  desc "List a domain's subdomains and pages from public sources"
  homepage "https://webscanner.imanandhu.in/cli"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anandhuremanan/Web-Scanner/releases/download/cli-v1.1.0/webscanner_1.1.0_darwin_arm64.tar.gz"
      sha256 "5658341b305f38b2f049198f3707f67e1906507e33ed3e573066113c4b223700"
    end
    on_intel do
      url "https://github.com/anandhuremanan/Web-Scanner/releases/download/cli-v1.1.0/webscanner_1.1.0_darwin_amd64.tar.gz"
      sha256 "3eda36472f14d7e4ba2e3f4e05b8fd7d08e801c427d2d1196e37e150c057051d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anandhuremanan/Web-Scanner/releases/download/cli-v1.1.0/webscanner_1.1.0_linux_arm64.tar.gz"
      sha256 "2a8126fa2a0170d2fc25ac296c6ddc529bcae95ff1f15db1ded955106f111bec"
    end
    on_intel do
      url "https://github.com/anandhuremanan/Web-Scanner/releases/download/cli-v1.1.0/webscanner_1.1.0_linux_amd64.tar.gz"
      sha256 "d02da6e86ca540d1de0a1b3eb7d9110a76df0524089a8c7f4c5839c26593a6cd"
    end
  end

  def install
    bin.install "webscanner"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/webscanner -version 2>&1")
  end
end
