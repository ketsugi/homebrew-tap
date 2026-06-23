class Curlew < Formula
  desc "Inspect before you execute. A safe wrapper for curl|bash"
  homepage "https://github.com/ketsugi/curlew"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ketsugi/curlew/releases/download/v#{version}/curlew-darwin-arm64"
      sha256 "2d2b5ef7e1c30e4e7e0e7a3ec71accf007927626fea135b849c95bbb69109df8"
    else
      url "https://github.com/ketsugi/curlew/releases/download/v#{version}/curlew-darwin-amd64"
      sha256 "f4e95da03dff94fe2189264df47b2066e01ca5b94e486b2db41cc792a6b50edb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ketsugi/curlew/releases/download/v#{version}/curlew-linux-arm64"
      sha256 "b8740d134fb8d9893526316e0ab46034ea1b3f3f173a604fac8b7f044a9ad7b4"
    else
      url "https://github.com/ketsugi/curlew/releases/download/v#{version}/curlew-linux-amd64"
      sha256 "620b2606d024895b5a01b82b59f08ccdfa914bbc5235378707474d5e01d8357d"
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
