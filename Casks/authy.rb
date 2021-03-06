cask 'authy' do
  version '1.1.0'
  sha256 '672580bcc520514ad68e54fb9b43956a84cf429407e58d66033056b2e797cc63'

  # s3.amazonaws.com/authy-electron-repository-production was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/authy-electron-repository-production/authy/stable/#{version}/darwin/x64/authy-installer.dmg"
  name 'Authy Desktop'
  homepage 'https://authy.com/'

  auto_updates true

  app 'Authy Desktop.app'

  zap delete: [
                '~/Library/Caches/com.authy.authy-mac',
                '~/Library/Caches/com.authy.authy-mac.ShipIt',
                '~/Library/Cookies/com.authy.authy-mac.binarycookies',
              ],
      trash:  [
                '~/Library/Application Support/Authy Desktop',
                '~/Library/Preferences/com.authy.authy-mac.helper.plist',
                '~/Library/Preferences/com.authy.authy-mac.plist',
              ]
end
