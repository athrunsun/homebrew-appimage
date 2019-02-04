class InsomniaAppimage < Formula
    desc "Cross-platform HTTP and GraphQL Client."
    homepage "https://github.com/getinsomnia/insomnia"
    version "6.3.2"

    url "https://github.com/getinsomnia/insomnia/releases/download/v#{version}/insomnia-#{version}-x86_64.AppImage"
    sha256 "bc2a5e03b51a00c4eb772282ac6ef8855f13221c32a753f187162722273fa4af"

    bottle :unneeded
    conflicts_with "insomnia"
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
