class NeovimAppimage < Formula
    desc "Vim-fork focused on extensibility and usability."
    homepage "https://github.com/neovim/neovim"
    version "0.2.1"
    url "https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage"
    sha256 "6a191bf260c499ba171d54a1cfdbfd2df1a3c2475cfc66ed8366265d7ef0b254"

    bottle :unneeded
    cxxstdlib_check :skip
    conflicts_with "neovim", "neovim-binary"

    def install
        prefix.install Dir["*"]
        chmod(0755, "#{prefix}/nvim.appimage")
        bin.install_symlink("#{prefix}/nvim.appimage" => "nvim")
    end

    def caveats; <<~EOS
        Executable is linked as "nvim".
        EOS
    end
end
