class Curlew < Formula
  desc "Inspect before you execute. A safe wrapper for curl|bash"
  homepage "https://github.com/ketsugi/curlew"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ketsugi/curlew/releases/download/v#{version}/curlew-darwin-arm64"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/ketsugi/curlew/releases/download/v#{version}/curlew-darwin-amd64"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ketsugi/curlew/releases/download/v#{version}/curlew-linux-arm64"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/ketsugi/curlew/releases/download/v#{version}/curlew-linux-amd64"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    binary = Dir["curlew-*"].first || "curlew"
    bin.install binary => "curlew"
  end

  test do
    assert_match "curlew #{version}", shell_output("#{bin}/curlew --version")
  end
end
