class MarktextAppimage < Formula
    desc "Next generation markdown editor, running on platforms of MacOS Windows and Linux."
    homepage "https://github.com/marktext/marktext"
    version "0.10.21"

    url "https://github.com/marktext/marktext/releases/download/v#{version}/marktext-#{version}-x86_64.AppImage"
    sha256 "8fbd179a453173032ea553a77442bc5d414d58ae13427b62210b2f833d2bb045"

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
