class Olp < Formula
  desc "With the Command Line Interface you can access HERE platform services from a command line or with scripts."
  homepage "https://platform.in.here.com/sdk/cli"
  url "https://artifact.api.platform.here.com/v1/references/hrn:here:artifact:::com.here.platform:cli:12.1.2/cli-12.1.2.gz\?apiKey\=84q8N9DRx6YAqyJaXUpr9fhiTnCUIBzvHLpk3QU4Oaw"
  sha256 "4acacfaca744b00b2ddfca3c7fd9506a7aae9b01fe21dfe6ffc0fd7f1c18711f"
  version "12.1.2"
  license "Proprietary"

  depends_on "openjdk@8"

  def install
    prefix.install "HERE_NOTICE"
    prefix.install "LICENSE"
    libexec.install "cli_2.12-12.1.2.jar"
    bin.write_jar_script libexec/"cli_2.12-12.1.2.jar", "olp", "-Dfile.encoding=UTF8"
  end

  test do
    system bin/"olp", "version", "--help"
  end

end