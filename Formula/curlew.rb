class Curlew < Formula
  desc "Inspect before you execute. A safe wrapper for curl|bash"
  homepage "https://github.com/ketsugi/curlew"
  version "0.2.2"
  url "https://github.com/ketsugi/curlew/releases/download/v#{version}/curlew"
  sha256 "8309d30ee3f811e4ab07b4981845875a5e57ea80b91d546931128fd9d7e482d3"
  license "MIT"

  def install
    bin.install "curlew"
  end

  test do
    assert_match "curlew #{version}", shell_output("#{bin}/curlew --version")
  end
end
