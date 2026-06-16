class Curlew < Formula
  desc "Inspect before you execute. A safe wrapper for curl|bash"
  homepage "https://github.com/ketsugi/curlew"
  version "0.1.0"
  url "https://github.com/ketsugi/curlew/releases/download/v#{version}/curlew"
  sha256 "b969e0bb2133a89f16e0698bab7a4b3f7e8fe2dd039b2778e6a41ac3885fd378"
  license "MIT"

  def install
    bin.install "curlew"
  end

  test do
    assert_match "curlew #{version}", shell_output("#{bin}/curlew --version")
  end
end
