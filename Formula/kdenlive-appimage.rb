class KdenliveAppimage < Formula
    desc "Libre video editor"
    homepage "https://kdenlive.org/en/"
    version "18.12.1b"
    
    url "https://files.kde.org/kdenlive/release/kdenlive-#{version}-x86_64.appimage"
    sha256 "e52d19da268b638ca60e82428eb7069b8b24ce23d5e059ba49fed22b604a7737"

    bottle :unneeded
    cxxstdlib_check :skip

    def install
        prefix.install Dir["*"]
        chmod(0755, "#{prefix}/kdenlive-#{version}-x86_64.appimage")
        bin.install_symlink("#{prefix}/kdenlive-#{version}-x86_64.appimage" => "kdenlive")
    end

    def caveats; <<~EOS
        Executable is linked as "kdenlive".
        EOS
    end
end
