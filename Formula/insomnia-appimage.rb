class InsomniaAppimage < Formula
    desc "Cross-platform HTTP and GraphQL Client."
    homepage "https://github.com/getinsomnia/insomnia"
    version "6.2.0"

    url "https://github.com/getinsomnia/insomnia/releases/download/v#{version}/insomnia-#{version}-x86_64.AppImage"
    sha256 "b18004127f751e207f736220c49fa05964a5be4ac09bda93de2e75d4bcffd247"

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
