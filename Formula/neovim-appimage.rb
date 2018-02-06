class NeovimAppimage < Formula
    desc "Vim-fork focused on extensibility and usability."
    homepage "https://github.com/neovim/neovim"
    version "0.2.2"
    url "https://github.com/neovim/neovim/releases/download/v#{version}/nvim.appimage"
    sha256 "809f6c24d78ebbbac5edb643deeb01b4dc06a54a712e4ebec381a98ab493ac73"

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
