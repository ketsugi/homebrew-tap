class Curlew < Formula
  desc "Inspect before you execute. A safe wrapper for curl|bash"
  homepage "https://github.com/ketsugi/curlew"
  version "0.2.0"
  url "https://github.com/ketsugi/curlew/releases/download/v#{version}/curlew"
  sha256 "6d3f8a304379cdf29ce58135d8c2be9c624fd63dee1573da3c601401b3e7bdca"
  license "MIT"

  def install
    bin.install "curlew"
  end

  test do
    assert_match "curlew #{version}", shell_output("#{bin}/curlew --version")
  end
end
