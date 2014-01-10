AQUASKK_JISYO      = File.expand_path("~/Library/Application Support/AquaSKK/SKK-JISYO.L")
AQUASKK_JISYO_UTF8 = File.expand_path("~/Library/Application Support/AquaSKK/skk-jisyo.utf8")
KOBITO_DB          = File.expand_path("~/Library/Application Support/Kobito/Kobito.db")
PRIVATE_XML        = File.expand_path("~/Library/Application Support/KeyRemap4MacBook/private.xml")

file KOBITO_DB => File.expand_path("~/Dropbox/Kobito.db") do |t|
  mkdir_p File.dirname(t.name)
  ln_sf t.prerequisites.first, t.name
end

file AQUASKK_JISYO => File.expand_path("~/Dropbox/skk/SKK-JISYO.L") do |t|
  mkdir_p File.dirname(t.name)
  ln_sf t.prerequisites.first, t.name
end

file AQUASKK_JISYO_UTF8 => File.expand_path("~/Dropbox/skk/skk-jisyo.utf8") do |t|
  mkdir_p File.dirname(t.name)
  ln_sf t.prerequisites.first, t.name
end

file PRIVATE_XML => File.expand_path("~/repos/@aereal/dotfiles/osx/keyremap4macbook/private.xml") do |t|
  mkdir_p File.dirname(t.name)
  ln_sf t.prerequisites.first, t.name
end

task :kobito => KOBITO_DB
task :aqua_skk => [AQUASKK_JISYO, AQUASKK_JISYO_UTF8]
task :keyremap4macbook => PRIVATE_XML
