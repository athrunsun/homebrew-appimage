class MarktextAppimage < Formula
    desc "Next generation markdown editor, running on platforms of MacOS Windows and Linux."
    homepage "https://github.com/marktext/marktext"
    version "0.14.0"

    url "https://github.com/marktext/marktext/releases/download/v#{version}/marktext-#{version}-x86_64.AppImage"
    sha256 "333b55f78779c8ce93bace15987d546d46d05f4543b90f1b6afdbadf348921d1"

    bottle :unneeded
    cxxstdlib_check :skip

    def install
        prefix.install Dir["*"]
        chmod(0755, "#{prefix}/marktext-#{version}-x86_64.AppImage")
        bin.install_symlink("#{prefix}/marktext-#{version}-x86_64.AppImage" => "marktext")
    end

    def caveats; <<~EOS
        Executable is linked as "marktext".
        EOS
    end
end
