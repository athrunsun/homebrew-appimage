class PeekAppimage < Formula
  desc "Simple animated GIF screen recorder with an easy to use interface"
  homepage "https://github.com/phw/peek"
  version "1.2.2"
  url "https://github.com/phw/peek/releases/download/#{version}/peek-#{version}-0-x86_64.AppImage"
  sha256 "ba69018b3614cc77ebf337ab59265909934691fae6cf0817d948243430aebd0f"

  bottle :unneeded

  def install
    prefix.install Dir["*"]
    chmod(0755, "#{prefix}/peek-#{version}-0-x86_64.AppImage")
    bin.install_symlink("#{prefix}/peek-#{version}-0-x86_64.AppImage" => "peek")
  end

  def caveats; <<~EOS
        Executable is linked as "peek".
        EOS
  end

end
