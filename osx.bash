# フルキーボードアクセスを有効にする (Tabですべてのコントロールにフォーカスできるようになる)
defaults write -g AppleKeyboardUIMode -int 3

# Dock {{{
# Dockを自動的に隠す
defaults write com.apple.dock autohide -bool true

# Dockをすぐに表示する
defaults write com.apple.dock autohide-delay -float 0

# Minimize animation
defaults write com.apple.dock mineffect scale

# アプリケーションアイコンにしまう
defaults write com.apple.dock minimize-to-application -bool true

# 最小化されたアプリケーションのアイコンは透過させる
defaults write com.apple.dock showhidden -bool true

# Dockを2D表示に
defaults write com.apple.dock no-glass -bool true

# Dockを拡大する
defaults write com.apple.dock magnification -bool true

# スタックをハイライト表示する
defaults write com.apple.dock mouse-over-hilite-stack -bool true

# 実行中のアプリケーションにインジケータを表示しないように
defaults write com.apple.dock show-process-indicator -bool false

# Dashboard をスペースとして表示しない
defaults write com.apple.dock dashboard-in-overlay -bool true

# テキパキ Expose
defaults write com.apple.dock expose-animation-duration -float 0.1

# disable dashboard
defaults write com.apple.dashboard mcx-disabled -bool true
# }}}

# Time Machine {{{
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true
hash tmutil &>/dev/null && sudo tmutil disablelocal # Time Machine のローカルスナップショットを切る
# }}}

# Appearance {{{
defaults write -g AppleAquaColorVariant -int 6 # Graphite
# defaults write -g AppleHighlightColor # Highlight color

# メニューバーを透過させないように
defaults write -g AppleEnableMenuBarTransparency -bool false

# スクロールバーはデバイスに応じて自動的に
defaults write -g AppleShowScrollBars -string 'Automatic'
# }}}

# Fn キーを本来の動作にする
defaults write -g com.apple.keyboard.fnState -bool true

# Finder {{{
# 拡張子を常に表示する
defaults write -g AppleShowAllExtensions -bool true

# 検索するときは現在のディレクトリ以下から
defaults write com.apple.finder FXDefaultSearchScope -string 'SCcf'

# フォルダの中身を QuickLook
defaults write com.apple.finder QLEnableXRayFolders -bool true

# Disable animations
defaults write com.apple.finder DisableAllAnimations -bool true

# 不可視ファイルも表示する
defaults write com.apple.finder AppleShowAllFiles -bool true

# 便利バーは全部表示する
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.finder ShowPathbar -bool true

# リスト表示
defaults write com.apple.finder FXPreferredViewStyle -string "Nslv"

# ファイルに保存ダイアログは常に展開
defaults write -g NSNavPanelExpandedStateForSaveMode -bool true

# インターネットからダウンロードしたアプリケーションに実行ダイアログを表示しない
defaults write com.apple.LaunchServices LSQuarantine -bool false

# 拡張子変更にうるさくいわれない
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool true
# }}}

# 自動スペル訂正いらない
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false

# ディスクイメージの検証をスキップ
defaults write com.apple.frameworks.diskimages skip-verify -bool true
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true

# .DS_Storeをつくるな
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Security {{{
# Screen Saver {{{
# パスワードをすぐに求める
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0
# }}}
# }}}

# Trackpad {{{
# タップでクリック
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true

# ドラッグロック
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad DragLock -bool true
# }}}

# ウィンドウ状態の保存をしない
defaults write -g NSQuitAlwaysKeepsWindows -bool false

# ポインタを最大に
defaults write com.apple.universalaccess mouseDriverCursorSize -int 4

# Activity Monitor.app {{{
# Dockのアイコンをメモリ使用量に
defaults write com.apple.ActivityMonitor IconType -int 4
# }}}

# App Store {{{
defaults write com.apple.appstore ShowDebugMenu -bool true
# }}}

# 縮小するときのアニメーション
# http://www.defaults-write.com/increase-the-speed-of-os-x-dialogs-boxes/#.UfSW3GSsgy4
defaults write -g NSWindowResizeTime -float 0.001

# Save to disk (not to iCloud)
defaults write -g NSDocumentSaveNewDocumentsToCloud -bool false

# Alfred.app {{{
# ステータスバーのアイコンを隠す
defaults write com.alfredapp.Alfred appearance.hideStatusBarIcon -bool true

# 歯車アイコンを隠す
defaults write com.alfredapp.Alfred appearance.hidePreferencesCogIcon -bool true

# 帽子アイコンを隠す
defaults write com.alfredapp.Alfred appearance.hideHat -bool true

# enable eject command
defaults write com.alfredapp.Alfred system.eject -bool true
# }}}

# Divvy.app {{{
# ショートカットキーを押すたび複数ディスプレイ間を移動する
defaults write com.mizage.divvy useMonitorCycling -bool true

# 10 x 10
defaults write com.mizage.divvy defaultColumnCount -int 10
defaults write com.mizage.divvy defaultRowCount -int 10
# }}}

# Disable standby mode
sudo pmset -a standbydelay 86400 # 24 hours

for app in Alfred Divvy Finder Dock SystemUIServer; do killall $app >/dev/null 2>&1; done

# vim:set foldmethod=marker:
