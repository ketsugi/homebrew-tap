class Curlew < Formula
  desc "Inspect before you execute. A safe wrapper for curl|bash"
  homepage "https://github.com/ketsugi/curlew"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ketsugi/curlew/releases/download/v#{version}/curlew-darwin-arm64"
      sha256 "fd0c2375b69b9732e9fe4f62099bd80a82e8f71f42e2dce9db4f72748e2dfb48"
    else
      url "https://github.com/ketsugi/curlew/releases/download/v#{version}/curlew-darwin-amd64"
      sha256 "4b6f2c4a53794bbb24939b4f2b866f4b479e792868dee9d0b25be48ad1586fcc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ketsugi/curlew/releases/download/v#{version}/curlew-linux-arm64"
      sha256 "0d550fd7787e65eb305a15472bb69abb5e46e37792b8e6d231db7e8695dfbbd8"
    else
      url "https://github.com/ketsugi/curlew/releases/download/v#{version}/curlew-linux-amd64"
      sha256 "b86faa9702d7b623129d307039bb32a61213f8fc041064d6011ee41dcc6c9d50"
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
