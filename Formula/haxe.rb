require 'formula'

class Haxe < Formula
  homepage 'http://haxe.org/'
  url 'http://haxe.org/file/haxe-3.0.0-rc2-osx.tar.gz'
  sha1 '5b631e53114a50fc418fa701c813154f73124667'

  def install
    bin.install %w(haxe haxedoc haxelib)
    (share+"haxe").install "std"
  end

  def caveats; <<-EOS.undent
    HaXe needs to know how to find its standard library so add this to your
    shell profile:
      export HAXE_STD_PATH="$(brew --prefix)/share/haxe/std:/usr/local/lib/haxe/lib:."
    EOS
  end
end