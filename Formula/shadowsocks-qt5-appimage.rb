class ShadowsocksQt5Appimage < Formula
    desc "A cross-platform shadowsocks GUI client"
    homepage "https://github.com/shadowsocks/shadowsocks-qt5"
    version "3.0.1"
    
    url "https://github.com/shadowsocks/shadowsocks-qt5/releases/download/v#{version}/Shadowsocks-Qt5-#{version}-x86_64.AppImage"
    sha256 "79dbf106fdc4bc892393212e292a7de26be75940c4523b96be7d9e7751f4a7a4"

    bottle :unneeded
    cxxstdlib_check :skip

    def install
        prefix.install Dir["*"]
        chmod(0755, "#{prefix}/Shadowsocks-Qt5-#{version}-x86_64.AppImage")
        bin.install_symlink("#{prefix}/Shadowsocks-Qt5-#{version}-x86_64.AppImage" => "ss-qt5")
    end

    def caveats; <<~EOS
        Executable is linked as "ss-qt5".
        EOS
    end
end
