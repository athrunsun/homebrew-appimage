class LibrewolfAppimage < Formula
    desc "A fork of Firefox, focused on privacy, security and freedom."
    homepage "https://librewolf.net"
    version "96.0.3"

    @@arch = "x86_64"

    if Hardware::CPU.arm?
        @@arch = "aarch64"
    end

    url "https://gitlab.com/api/v4/projects/24386000/packages/generic/librewolf/96.0.3-2/LibreWolf.#{@@arch}.AppImage"

    if Hardware::CPU.arm?
        sha256 "3a083d40b862df383980c9d44021ff8cafe6b7f9328d1e8265d9c263016b9284"
    else
        sha256 "8e7d8242f92cd5aa2c5903b4f08eba75d5fdee2f1c1a294da91d1fb8bbe68c1e"
    end

    cxxstdlib_check :skip

    def install
        prefix.install Dir["*"]
        chmod(0755, "#{prefix}/LibreWolf.#{@@arch}.AppImage")
        bin.install_symlink("#{prefix}/LibreWolf.#{@@arch}.AppImage" => "librewolf")
    end

    def caveats; <<~EOS
        Executable is linked as "librewolf".
        EOS
    end
end
