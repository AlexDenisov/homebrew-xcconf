class Xcconf < Formula
  homepage "https://github.com/AlexDenisov/xcconf"
  url "https://github.com/AlexDenisov/xcconf/archive/0.3.0.tar.gz"
  sha1 "367fcda6059d9c178c349e269fe104b2995922d0"

  def install
    system "make"
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    system "#{bin}/xcconf", "2>&1", "|", "grep", "-q", "INPUT_FILE_PATH"
  end
end
