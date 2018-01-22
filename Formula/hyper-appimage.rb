class HyperAppimage < Formula
    desc "A terminal built on web technologies."
    homepage "https://hyper.is"
    version "1.4.8"
    url "https://github.com/zeit/hyper/releases/download/#{version}/hyper-#{version}-x86_64.AppImage"
    sha256 "e116416ee153e1b6db7edfd74071c60be2d67a943168b0e429eb3aee740d5fc7"

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
