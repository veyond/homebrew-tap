class Pycharm < Formula
    desc "Python IDE for Professional Developers, professional edition."
    homepage "http://www.jetbrains.com/pycharm/"
    version "2020.1.1"
    url "https://download.jetbrains.com/python/pycharm-professional-#{version}.tar.gz"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/pycharm.sh" => "pycharm")
    end

    def caveats; <<~EOS
        Executable is linked as "pycharm".
        EOS
    end
end
