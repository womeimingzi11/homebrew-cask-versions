cask 'osu-development' do
  version '2019.717.1'
  sha256 '36fff10058eaffa3814f43c505e47f43831d0663d3343f07a53b0fcc2cfc5018'

  url "https://github.com/ppy/osu/releases/download/#{version}/osu.app.zip"
  appcast 'https://github.com/ppy/osu/releases.atom'
  name 'osu!lazer'
  homepage 'https://github.com/ppy/osu/'

  auto_updates true
  conflicts_with cask: 'osu'
  depends_on macos: '>= :sierra'

  app 'osu!.app'

  zap trash: [
               '~/.local/share/osu',
               '~/Library/Saved Application State/sh.ppy.osu.lazer.savedState',
             ]
end
