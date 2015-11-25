class Xcconf < Formula
  homepage "https://github.com/AlexDenisov/xcconf"
  url "https://github.com/AlexDenisov/xcconf/archive/0.4.0.tar.gz"
  sha1 "9817c2bb66233b65fdbd59765bd1f6ed3c26c3d9"

  def install
    system "make"
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    system "#{bin}/xcconf", "2>&1", "|", "grep", "-q", "INPUT_FILE_PATH"
  end
end
