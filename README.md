#### Requirements
Install Tuist
```
bash <(curl -Ls https://install.tuist.io)
```
or
```
brew install --cask tuist
```

#### Usage
```
tuist scaffold Template --name {AppName} --bundle_id {BundleId} --author "{Author}" --date "{yyyy. MM. dd.}"
```

#### Example
```
tuist scaffold Template --name TestApp --bundle_id com.magnificat.TestApp --author "Andras Olah" --date "2026. 04. 15."
```