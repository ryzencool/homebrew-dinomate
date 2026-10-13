cask "dinomate" do
  version "0.1.13"
  sha256 "1805c409f7c1a43dee1d7a83b0d4326142471893fbcd639f8794021ec55bbe3c"

  url "https://dinoapp.s3.bitiful.net/app/dinomate/mac-arm64/DinoMate-#{version}-mac-arm64.zip"
  name "DinoMate"
  desc "菜单栏划词翻译和截图翻译"
  homepage "https://dinox.info/guides/ddownload/download"

  livecheck do
    url "https://dinoapp.s3.bitiful.net/app/dinomate/mac-arm64/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "DinoMate.app"

  zap trash: [
    "~/Library/Application Support/dino-translate",
    "~/Library/Application Support/dinomate",
  ]
end
