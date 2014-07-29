require "formula"

class Ultrastikcmd < Formula
  homepage "http://www.ultimarc.com/ultrastik_prog.html"
  url "http://www.ultimarc.com/ultrastikcmd-0.1.1.tar.gz"
  sha1 "53a03e645ac3b69980bb1fccf0a3c7806f4912f2"

  depends_on "libusb"
  depends_on "argp-standalone"
  depends_on "libhid"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end

  test do
    system "false"
  end
end
