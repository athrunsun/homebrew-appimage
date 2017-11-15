class EmacsAppimage < Formula
    desc "Builds GNU Emacs from git on Travis CI and packages it as an AppImage."
    homepage "https://github.com/probonopd/Emacs.AppImage"
    version "25.1"
    url "https://github.com/probonopd/Emacs.AppImage/releases/download/AppImage/Emacs-#{version}-glibc2.17-x86-64.AppImage"
    sha256 "ca3be352606de7509401f0c9a5415dd5a1ac1ece5f9e7d0c23c712d8dd0e763c"

    bottle :unneeded
    cxxstdlib_check :skip
    conflicts_with "emacs"

    def install
        prefix.install Dir["*"]
        chmod(0755, "#{prefix}/Emacs-#{version}-glibc2.17-x86-64.AppImage")
        bin.install_symlink("#{prefix}/Emacs-#{version}-glibc2.17-x86-64.AppImage" => "emacs")
    end

    def caveats; <<-EOS.undent
        Executable is linked as "emacs".
        EOS
    end
end
