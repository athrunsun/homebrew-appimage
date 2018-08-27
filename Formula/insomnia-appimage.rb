class InsomniaAppimage < Formula
    desc "Cross-platform HTTP and GraphQL Client."
    homepage "https://github.com/getinsomnia/insomnia"
    version "6.0.2"

    url "https://github.com/getinsomnia/insomnia/releases/download/v#{version}/insomnia-#{version}-x86_64.AppImage"
    sha256 "3bed5943465cec2938b6d4bfc180503c6d5d002dac0cb16474c4282983c01759"

    bottle :unneeded
    cxxstdlib_check :skip

    def install
        prefix.install Dir["*"]
        chmod(0755, "#{prefix}/insomnia-#{version}-x86_64.AppImage")
        bin.install_symlink("#{prefix}/insomnia-#{version}-x86_64.AppImage" => "insomnia")
    end

    def caveats; <<~EOS
        Executable is linked as "insomnia".
        EOS
    end
end
