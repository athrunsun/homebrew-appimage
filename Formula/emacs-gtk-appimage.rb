class EmacsGtkAppimage < Formula
    desc "Builds GNU Emacs from git on Travis CI and packages it as an AppImage. This is the gtk3 version."
    homepage "https://github.com/probonopd/Emacs.AppImage"
    version "25.1"
    url "https://github.com/probonopd/Emacs.AppImage/releases/download/AppImage/Emacs-#{version}.gtk3-glibc2.17-x86-64.appimage"
    sha256 "ca3be352606de7509401f0c9a5415dd5a1ac1ece5f9e7d0c23c712d8dd0e763c"

    bottle :unneeded
    cxxstdlib_check :skip

    def install
        prefix.install Dir["*"]
        chmod(0755, "#{prefix}/Emacs-#{version}.gtk3-glibc2.17-x86-64.appimage")
        bin.install_symlink("#{prefix}/Emacs-#{version}.gtk3-glibc2.17-x86-64.appimage" => "emacs-gtk")
    end

    def caveats; <<~EOS
        Executable is linked as "emacs-gtk".
        EOS
    end
end
