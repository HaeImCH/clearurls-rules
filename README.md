<a href="https://www.paypal.me/KevinRoebert" target="_blank"><img src="https://raw.githubusercontent.com/KevinRoebert/DonateButtons/master/Paypal.png" alt="Buy Me A Coffee" height="55"></a>
<a href="https://www.buymeacoffee.com/KevinRoebert" target="_blank"><img src="https://raw.githubusercontent.com/KevinRoebert/DonateButtons/master/BuyMeACoffee.png" alt="Buy Me A Coffee" height="55"></a>

[<img src="https://blog.mozilla.org/addons/files/2020/04/get-the-addon-fx-apr-2020.svg" alt="for Firefox" height="60px">](https://addons.mozilla.org/firefox/addon/clearurls/) [<img src="https://docs.clearurls.xyz/1.22.0/assets/img/MEA-button.png" alt="for Edge" height="60px">](https://microsoftedge.microsoft.com/addons/detail/mdkdmaickkfdekbjdoojfalpbkgaddei)

# <sub><img src="https://gitlab.com/KevinRoebert/ClearUrls/raw/master/img/clearurls.svg" width="64px" height="64px"></sub> ClearURLs Rules

**ClearURLs** is an add-on based on the new WebExtensions technology and is optimized for *Firefox* and *Chrome* based browsers.

> [!NOTE]
> This fork is mainly maintained as the ruleset for [cf-remove-tracker-arg-rs](https://github.com/HaeImCH/cf-remove-tracker-arg-rs), not for the ClearURLs extension. It is a ClearURLs-format ruleset, so the extension can load it as custom rules, but changes here are made and tested for the worker.

This repo manages the rules for the ClearURLs addon. Every push to `master` is built by Cloudflare Pages (`build_tools/build.sh`), which creates the checksum files for the rules and publishes them.

## Contribute
If you have any suggestions or complaints, please [create an issue](https://gitlab.com/anti-tracking/ClearURLs/rules/-/issues/new) or email us rules.support (at) clearurls.xyz (this mail will automatically create a new issue in this repo).

## Download Rules
The rules and the corresponding hash file are available on Cloudflare Pages under the following URLs:

- data.minify.json: https://clearurls-rules.pages.dev/data.minify.json
- rules.minify.hash: https://clearurls-rules.pages.dev/rules.minify.hash
