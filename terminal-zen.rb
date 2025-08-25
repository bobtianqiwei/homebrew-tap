# terminal-zen.rb developed by Bob Tianqi Wei
class TerminalZen < Formula
    desc "A terminal-based breathing and meditation guide with progress bars"
    homepage "https://github.com/bobtianqiwei/terminal-zen"
    url "https://github.com/bobtianqiwei/terminal-zen/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "7209ad362ef7999c71eafb5a27c7f80b7e9022b0eb02c9eb16b98cdd9ba2ed4f"
    license "MIT"
    head "https://github.com/bobtianqiwei/terminal-zen.git", branch: "main"
  
    depends_on "python@3.9"
  
    def install
      system "python3", "-m", "pip", "install", *std_pip_args, "."
    end
  
    test do
      system "#{bin}/zen", "--help"
    end
  end