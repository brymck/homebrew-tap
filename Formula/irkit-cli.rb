class IrkitCli < Formula
  desc "Command-line interface for IRKit"
  homepage "https://github.com/brymck/irkit-cli"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/brymck/irkit-cli/releases/download/v0.0.1/irkit-cli_0.0.1_darwin_amd64.tar.gz"
      sha256 "e956151638ab1b0beeceb960abe7fa72e19a377e3fc0193975844da87b308acc"
    end
    if Hardware::CPU.arm?
      url "https://github.com/brymck/irkit-cli/releases/download/v0.0.1/irkit-cli_0.0.1_darwin_arm64.tar.gz"
      sha256 "ab74e78868596eaa86541303580a84e09ef953b770f5e60da64a0756338de7d2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/brymck/irkit-cli/releases/download/v0.0.1/irkit-cli_0.0.1_linux_amd64.tar.gz"
      sha256 "56f3f80bd485485336001b9498876142f0d888f786cfbbb90d4174e8f2b8df82"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/brymck/irkit-cli/releases/download/v0.0.1/irkit-cli_0.0.1_linux_arm64.tar.gz"
      sha256 "69424db952dac161d625c3504dbdd1a162b95615495c10eea4abec656c0664c5"
    end
  end

  def install
    bin.install "irkit-cli"
  end
end
