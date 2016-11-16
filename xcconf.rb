class Xcconf < Formula
  homepage "https://github.com/AlexDenisov/xcconf"
  url "https://github.com/AlexDenisov/xcconf/archive/0.4.0.tar.gz"
  sha256 "659e4b68766aa5d2d28da997cef03a09df4d7ce7d8be18d06b5351e42cb352ea"

  def install
    system "make"
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    system "#{bin}/xcconf", "2>&1", "|", "grep", "-q", "INPUT_FILE_PATH"
  end
end
