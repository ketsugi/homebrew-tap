class Curlew < Formula
  desc "Inspect before you execute. A safe wrapper for curl|bash"
  homepage "https://github.com/ketsugi/curlew"
  version "0.2.1"
  url "https://github.com/ketsugi/curlew/releases/download/v#{version}/curlew"
  sha256 "2c1a0e670bad0f38264e2737ae02d9b1848e22eb2d3695b4913ee386c7e6a602"
  license "MIT"

  def install
    bin.install "curlew"
  end

  test do
    assert_match "curlew #{version}", shell_output("#{bin}/curlew --version")
  end
end
