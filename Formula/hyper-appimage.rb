class HyperAppimage < Formula
    desc "A terminal built on web technologies."
    homepage "https://hyper.is  https://github.com/zeit/hyper"
    version "2.0.0"
    url "https://github.com/zeit/hyper/releases/download/#{version}/hyper-#{version}-x86_64.AppImage"
    sha256 "61ef1d6aec92956c62ea94c51b2e5f7f30e832968998f659361366a4f73c7054"

    bottle :unneeded
    cxxstdlib_check :skip

    def install
        prefix.install Dir["*"]
        chmod(0755, "#{prefix}/hyper-#{version}-x86_64.AppImage")
        bin.install_symlink("#{prefix}/hyper-#{version}-x86_64.AppImage" => "hyper")
    end

    def caveats; <<~EOS
        Executable is linked as "hyper".
        EOS
    end
end
