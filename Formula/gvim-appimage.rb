class GvimAppimage < Formula
    desc "AppImage for gVim."
    homepage "https://github.com/vim/vim-appimage"
    version "8.0.1207"
    url "https://github.com/vim/vim-appimage/releases/download/v#{version}7/GVim-v#{version}7-git67435d998-glibc2.15.glibc2.15-x86_64.AppImage"
    sha256 "bca9a545a6504d10abf2a9be4d1da5b0f10640ca1aef4cc3afa5b5399ea7cd50"

    bottle :unneeded
    cxxstdlib_check :skip

    def install
        prefix.install Dir["*"]
        chmod(0755, "#{prefix}/GVim-v#{version}7-git67435d998-glibc2.15.glibc2.15-x86_64.AppImage")
        bin.install_symlink("#{prefix}/GVim-v#{version}7-git67435d998-glibc2.15.glibc2.15-x86_64.AppImage" => "gvim")
    end

    def caveats; <<-EOS.undent
        Executable is linked as "gvim".
        EOS
    end
end
