
Remove-Item Env:\TEMP,Env:\TMP,Env:\TMPDIR -ErrorAction Ignore
Set-Item Env:\TMP R:\TEMP
Set-Item Env:\TMPDIR R:\TEMP
Set-Item Env:\TEMP R:\TEMP

Set-Item Env:\THROW_UNLESS_PARALLELIZABLE 1

Set-Item Env:\PATH "C:\Program Files\nodejs\;C:\Users\invad\AppData\Roaming\nvm\;C:\Program Files (x86)\Yarn\bin;C:\Users\invad\.windows-build-tools\python27"

Set-Item Env:\JOBS 16

Set-Item Env:\PUPPETEER_SKIP_DOWNLOAD 1

Set-Item Env:\BROCCOLI_ENABLED_MEMOIZE true

Set-Item Env:\NODE_OPTIONS --max_old_space_size=4096

#Set-Item Env:\DEBUG "*,-leek*,-ember-cli*,-babel,-express*,-broccoli-persistent-filter:Babel,-async-disk-cache"
Set-Item Env:\DEBUG "ember-cli-htmlbars:*"
#Set-Item Env:\AUTO_IMPORT_VERBOSE true

nvm install 14.8.0
nvm use 14.8.0
Start-Sleep -s 1
yarn install
# yarn --check-files --ignore-scripts
yarn start
