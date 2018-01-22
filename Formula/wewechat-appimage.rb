class WewechatAppimage < Formula
    desc "Unofficial WeChat client built with React, MobX and Electron."
    homepage "https://github.com/trazyn/weweChat"
    version "1.1.5"
    url "https://github.com/trazyn/weweChat/releases/download/v#{version}/wewechat-#{version}-x86_64.AppImage"
    sha256 "b419127b3c541e2e5858d9fc77a4b0109b6db55a5c604dfe38f8b67f3bf32905"

    bottle :unneeded
    cxxstdlib_check :skip

    def install
        prefix.install Dir["*"]
        chmod(0755, "#{prefix}/wewechat-#{version}-x86_64.AppImage")
        bin.install_symlink("#{prefix}/wewechat-#{version}-x86_64.AppImage" => "wewechat")
    end

    def caveats; <<~EOS
        Executable is linked as "wewechat".
        EOS
    end
end
