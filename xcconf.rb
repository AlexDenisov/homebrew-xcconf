class Xcconf < Formula
  homepage "https://github.com/AlexDenisov/xcconf"
  url "https://github.com/AlexDenisov/xcconf/archive/0.2.0.tar.gz"
  sha1 "c6f4eec6e91be614b6cceece229d827390ac1078"

  def install
    system "make"
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    system "#{bin}/xcconf", "2>&1", "|", "grep", "-q", "INPUT_FILE_PATH"
  end
end
