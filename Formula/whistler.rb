class Whistler < Formula
  desc "Lightweight code editor built with Rust and iced"
  homepage "https://github.com/Albertlungu/Whistler"
  url "https://github.com/Albertlungu/Whistler/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "2835b001d2816ac96115c2286d72987e0b3a1393446074b9a19c7398a9fcefb8"
  license "MIT"

  depends_on "rust" => :build

  def install
    # Build the binary from the nested whistler/ directory
    system "cargo", "build", "--release", "--manifest-path=whistler/Cargo.toml"
    bin.install "whistler/target/release/Whistler"

    # Provide a conventional lowercase executable name
    bin.install_symlink bin/"Whistler" => "whistler"
  end

  test do
    assert_predicate bin/"Whistler", :exist?
    assert_predicate bin/"whistler", :exist?
  end
end
