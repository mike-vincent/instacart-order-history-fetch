class InstacartOrderHistoryFetch < Formula
  desc "Export your Instacart order history"
  homepage "https://mike-vincent.github.io/instacart-order-history-fetch/"
  url "https://raw.githubusercontent.com/mike-vincent/instacart-order-history-fetch/master/instacart-order-history-fetch"
  version "1.0.0"
  sha256 :no_check
  license "MIT"

  resource "manpage" do
    url "https://raw.githubusercontent.com/mike-vincent/instacart-order-history-fetch/master/man/man1/instacart-order-history-fetch.1"
    sha256 :no_check
  end

  def install
    bin.install "instacart-order-history-fetch"
    resource("manpage").stage do
      man1.install "instacart-order-history-fetch.1"
    end
  end

  test do
    assert_match "instacart-session-id", shell_output("#{bin}/instacart-order-history-fetch --help")
  end
end
