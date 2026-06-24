class Curlew < Formula
  desc "Inspect before you execute. A safe wrapper for curl|bash"
  homepage "https://github.com/ketsugi/curlew"
  version "1.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ketsugi/curlew/releases/download/v#{version}/curlew-darwin-arm64"
      sha256 "49ab648f744918410a967e6a2e52150a5fa64eff9e3dd695d4e9befac851d8c5"
    else
      url "https://github.com/ketsugi/curlew/releases/download/v#{version}/curlew-darwin-amd64"
      sha256 "f89b65c3275c91b8720976c77d612cb34d2b0b4f3cb03a0688a01ad7ba65877f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ketsugi/curlew/releases/download/v#{version}/curlew-linux-arm64"
      sha256 "1aabd641ca0ccf2b578203f52ce1b5d40a7ea346fc8054fc07fa5e0b7ff9f997"
    else
      url "https://github.com/ketsugi/curlew/releases/download/v#{version}/curlew-linux-amd64"
      sha256 "acc3a0291b3311536e86c021b4414bbacf7b4f78b3835ea98bfba220588a1656"
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
