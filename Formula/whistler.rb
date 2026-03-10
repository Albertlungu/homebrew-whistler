class Whistler < Formula
  desc "Lightweight code editor built with Rust and iced"
  homepage "https://github.com/Albertlungu/Whistler"
  url "https://github.com/Albertlungu/Whistler/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "2835b001d2816ac96115c2286d72987e0b3a1393446074b9a19c7398a9fcefb8"
  license "MIT"

  depends_on "rust" => :build

  def install
    # Build and install from the nested whistler/ directory
    system "cargo", "install", *std_cargo_args(path: "whistler")

    # Provide a conventional lowercase executable name
    bin.install_symlink bin/"Whistler" => "whistler"
  end

  test do
    assert_path_exists bin/"Whistler"
    assert_path_exists bin/"whistler"
  end
end
