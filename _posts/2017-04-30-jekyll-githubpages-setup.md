---
layout: post
title: "Jekyll and Github Pages Blog Setup"
date: 2017-04-30 01:50:00
description: Tutorial on how this blog was setup.
tags: 
 - blog
 - code
---

# Preface
This tutorial covers how to use Jekyll and GitHub Pages to host a free blog like this one. Bash commands are applicable to macOS Sierra version 10.12.4.

# Installs
## Git
By default git is not installed in macOS Sierra. The Xcode command line tools can be installed or you can install Git directly from a git mirror. The advantage of installing it from the mirror is Xcode lags behind the most up to date git version. Download and install the newest git version from the link below.

<https://sourceforge.net/projects/git-osx-installer/files/>{:target="_blank"}

Newer versions of macOS have a security protocol that causes some issues installing programs from unidentified developers and location of the install. Run the PKG file downloaded from Sourceforge and macOS will not install.

The workaround is to open computer Settings, go to Security & Privacy, and Click the lock to make changes. Once OK is clicked on the below menu the Security & Privacy window updates with an Open Anyway option. Now proceed through the git install with the default location.

![Git install unidentified](https://lh3.googleusercontent.com/rm8p_MDqt1Et5HAI_8B0uZ2ZXAEclt-Yc6cL4__gcyJ5T_kHYNvbvwBfluEExng6MJl5bm7ca6L3bGGqSQ4igdbotd6agucrcH_nmsV6UHDDZr67LyJuY15rhntHLWS_LIU2nEob2wnUe025C_t_sxO3VO-mkkAgFBvwCGHes44CJPSAwyaim2tnshwJTfFFNYAZl8hI--Gy3nJRmwjZqcMs4I0cdMF_5MBz3eK3VUiP5hGqwPx20gmpkgiTSk9YdQDB4KsexFhL3txsu7IaI5_jEIBhV3GLdSnwb40VSb8lOHqnYQJugQnbGaVYMvPXRoEvORF7hw0pn4POEBiglx3KW8Myk2pVP56uI7hgQIFkZMZBg0e8ZhJSBCLOPJBwVVVcjD-_nzf_6IVtFK_EW9XNuQpWj-YmsKJiS_5BRFLllStBhv-GBIM8431xgM2wskhccPbH32dHLL4uciWKbF8VfxlFFrPZsiDQr_Xsk03MVrujAOdZqPwvRPlY44C9HQD0mEFcIYjTXPBDAWbCCLVbS3BTWmEX2gZo_S28-GXNPgxRQXW-vhNGW4Jh51D24LWysAGoDhpI8-HdFWrlkCZU2H5FnLqm9EXygigoEgiLDcIzs21NaIYNTscW8faTR_MfbCo_H7UjR0GqJxk-JugHsplAdOZB-2uxvw3kgw=w420-h246-no)

![Git install security](https://lh3.googleusercontent.com/vWPcFf8JB6nH_M535JNMUdoLp0X1CSWqg0BhsS5ypLNxPhRYfPsOgU14aKbEwbWsFzb3s_RvLQoQQn-0G3zbvwucWQG7W8yYux0j3YKtR_DKxeZ3pbNqE_U5iXfmalYjXWuLYF666DJHKdUrAOPG_Vnrg2skodzYGAyjqZbZ9cJVFbX57J18w3Py4uGJWE4qd5duZHjR8ErYqAiatttFadBqOuoNvcVnQuwbcfbs9tHDI30lSe-xvKIp1D2NTtJ9MkVoCb7OSAJfsICSHabSsyJHw9gKWzZRUW1A5fA2NpZHLr-AziunDD9GfxtvvTh9qncjFxPuBwk6w1W2jAOx-PlcIAqf5ndpoHYyoaYqnytxFL1xYGTd-OquCG4zIsSVWgJpyTceFvFDOzpayMTxRvd4dVRfjnlcsXiHg_IGKfPnLKF5-OT_muYsqPp_-X551lG_Wmd1hqhD6dvYo2ZF-ggHZdzIGg_puztN4lQt1RYJUghjTnJXkCRh4vUV48UEmhNsN_oKkcyGvr94LDtj-TNxRrzkzR18qDJsMornZRFQ8QByudkEqIUvsVHOacisVSrCGRAyiGXIA5ygMFgmtvNfJOpMuuI8Bycq6z-sIAz-mqZBbrbTiSlittPfd21OFyl_JgZt02WOXthZg9Jh3yz6E2l3GqXQF57pvn6djg=w668-h543-no)

At the Terminal now type `which git`. If it returns `/usr/bin/git` it need to be changed to `/usr/local/bin/git` instead. To do this the `$PATH` variable needs to have the latter path before the first. Either edit or add this line to your `~/.bash_profile` file in your home directory using the terminal commands below.

`nano ~/.bash_profile`

Add this line which concatenates the local path to the very beginning of `/etc/paths`.

`export PATH=/usr/local/bin:$PATH`

Now exit nano using `^X` and make sure it is saved by pressing `Y`. Restart Terminal and type `which git` now should return the git path being in the local directory.

`/usr/local/bin/git`

## Xcode Command Line Tools
The Xcode command line tools also must be installed to install other things like Jekyll. Open the terminal and type the following. A new series of dialogs will pop up, just follow the prompts to install.

`xcode-select --install`

## Jekyll
Jekyll can be installed using Rubygems but macOS Sierra has new security features not allowing installs in default gem install location. This can be worked around by providing an install path as the last option when installing. Bundle needs to be installed first then Jekyll.

```
gem install bundle /usr/local/bin  
gem install jekyll /usr/local/bin
```

# GitHub Setup
Go to GitHub and create a new repository and do not initialize a README file. On the next page copy the link to your repository and clone it locally. This will create an empty directory in the Documents called `tutorial`.

```
cd ~/Documents
git clone https://github.com/aricbeaver/tutorial.git
```
Now go to the settings of your repository and change the GitHub Pages to use the master branch. Alternatively, you can create a new branch called `gh-pages` and GitHub will automatically assume it is a Pages branch.

![GitHub pages settings](https://lh3.googleusercontent.com/K4RcwuyLJcemYThZ4vSbeDoVB7XVkZWmi87QtNhCxek4_b49TNIzuPCRYFOYtp93K_NG0NBs6SS_WDepDW-JDk7KXSLgdVqhU0hOXNXCU0L_aEHoeRpGDYtLaMN8cgPLdboPIDZOGfBbSu3e8o3LKPDllf0dwxtamMeg_QA04O-puz6jOEwcQp84J0xzexAamRah5Zg3ZitLK3J_Y_J32uK1qRAqhp8nZ844d-cVZAGcBSxxzXIUMu4yrfOVHSxBRutq-ViQFwZK_PrHn96d3yDWlIibSKI_0ORuE7a6ECehUC56rleNjTrqdVNZPch30YnQlaMeDRRNcM0w_u2rEyQ21WsLrS5oc9S0F_TFsDvDIFjrzff3fRf7Ufeah8HcMxsNKUY0yPrdkQC_oJJ7DD0e47-oWF3XbJMVOKRWAS9AOl4kUC3DLxISmZhR-GGX0yC9dcTr92Onbu-cqWePq6d2LkQS74_J_nopLV_rmp1JeddMWhxw-wSW4A3kGVXX6In2yoyeeDAPfAiOY3QBC3QERSWomrwcVAqqsCoudgUIGdBbjRx520yURBElINmvL3vG9PZz7zoXpq5KqhQybiIXsixfipftVAVJGf92e8cbA7OrzMQYkh5IW0aF7VY-HCabu0hEA6CRSmcKbQc9_icH34GO-ODd5eDA9u-wgA=w744-h244-no)

# Create Jekyll Blog
Creating a Jekyll Blog is very easy.

```
cd ~/Documents
jekyll new tutorial
cd tutorial
jekyll serve
```

By default Jekyll will serve port 4000 on `localhost` so it can be access easily by typing the following into your browser's address bar.

<http://localhost:4000>{:target="_blank"}

![Initial default blog](https://lh3.googleusercontent.com/y7iLv945pZhIGpOKTaNyrqb7Rkzpfr76eOLfYqeQ2pE9glyimPCRaRelFuvaj1flSbGKuVArVQ_G3--eoYbrly_jtXkZL4vEoX2j0FOsPYot2GiYHBc-tpnpUZxIAFS2WtTIBZgXw6hVE_3PpOoPCmQT0SFoM0gsg88CQM7wahAYNyVN4vUIcW0oj4nvsu_QylBUIVlKCLap2Xr8JpljC5tJAPc8JvR_SBcBdCsD6nYmyDk58YF16oS2pJ46ktuqyZ-z4LHQRHMFpsIKRXeoeL6Ex81Kzv1s0YYFy33h8lqMrhzH3BJBYEbPPrfv97-WO4HpX0Es7BLx7I0GWA5PJiHHvKcDvDT4rf8UQvbwNHWGWlm2j2uzR0QSSZaSZS1XLcQ8kKhLwEJLMob73PtNwN6jKWg-xJ2CxBKzBm8RHuQUQx5N-JcGIVjuAqPbGFYVZ-bNZuGCBQbTu__3Xq4W2vRRzJe-kpfKurAaFISgIZ11yFCV2yRgsPYCJ7wcbz-aLCmCwuKG5b223ZaJzj9GEO1wJoDGZKN57DSSlHjh9R-HOQ2iH6jqTqKPnyfW2MUrQ1Z67MVmOaWQqg4_sKSQMnGVTRzC8wdKyEQJlZ1_EOW_go2NqV6eYsJBY_kzB6Hp5mf_Ja6VsEgBlSPB5AVS0Wciu6oLrm16O9nA7d12gA=w796-h493-no)

I didn't want to use the default Jekyll theme instead [Jekyll Clean Dark](https://github.com/streetturtle/jekyll-clean-dark){:target="_blank"} theme. There are hundreds of other themes at <http://jekyllthemes.org/>{:target="_blank"}.

Now the initial Jekyll project will be deleted and a new one pulled from the Jekyll Clean Dark theme repository to be forked into my own custom blog.

```
cd ~/Documents
rm -rf tutorial/
git clone https://github.com/aricbeaver/tutorial.git
cd tutorial
git pull https://github.com/streetturtle/jekyll-clean-dark.git
git push -u origin master
```

The `_config.yml` needs to be edited to get the theme fully functional. The `url` and `baseurl` need to be updated.

```
url: https://<insert_your_github_username>.github.io
baseurl: ''
```

Now add, commit, and push the files to GitHub.

```
cd ~/Documents/tutorial
git add .
git status # Not required but shows commit queue
git commit -m 'modified configuration to work with GitHub Pages'
git push
```

Accessing the blog at <https://insert_your_github_username.github.io/tutorial/>{:target="_blank"} should show the dark theme's example blog.

![Dark theme example](https://lh3.googleusercontent.com/PKh3mgxy8mWC2LYjADZKLrISfy2YuZLkqVyqRSytRRK5LikPolxDC4eFWq0QxhqPYfkpj9a8Qpo3LbpKH4QZ_BZeBvGOczZO7OvmnjbtAkQ3NizuLU1NyLWDrdqA-tQWKNdl8SUjXF-QeWTrt7Uh9Yjg8Sx0S3zwsckdoLUWNBx6JZrYB95DFefrmN7E1s3ofVpf1dK-OP4_c5HkJwjwEhrGtsxsqFNDiAR9fiesjmcQvtn5CVygjKju6PTJYow8pfvT8fXyjKgSf64A4sD18GKUNIulf_9ti4sa4i2A6FCctSD4vVgLAI-5DQcUCo6VQzXnWZn9M35DFzeIEBlE1cc2bKezbxvBDFIALzdgX2pyzVuABeKgGaRW19DtvmyTIcZiaWRw2yBiAMxg0iAJ2QP2NQJjHRCW6GKiogedxLrRtaIGSlbitdcZwDKtg02wxxAUUTZp5ZkSA2mbk21nOb1_NGSCzB0NYQKvbqFVyC5nSVfaRGa87shV1sZNGUlX_0Xyy-GQBjwnU8MuZg9ldqow8vqoX9g7sZAPnYr1c0fBdFiiQH9kEPsGnsNz36WimZxLGKTO4XAIh0BYBIifmHKwiZUHMXMVZ0RBVoeejrRnvkzJkhsRBlIVuQ1HQWjlzxTpG3r3-SoHfWSIhlVzPo_zIQFUH0DLM8c4Tu1aEw=w1130-h252-no)

# Add Posts
To add posts just create a new file in the `_posts` directory that uses the header format defined in the other example posts. Here is an example of this blog post. Be careful to not use a date that is in the future or it will not render that page when using Jekyll serve.

2017-04-30-jekyll-githubpages-setup.md
```
---
layout: post
title: "Jekyll and Github Pages Blog Setup"
date: 2017-04-30 01:50:00
description: Tutorial on how this blog was setup.
tags: 
 - blog
 - code
---

# Preface
This tutorial covers how to use Jekyll and GitHub Pages to host a free blog like this one. Bash commands are applicable to macOS Sierra version 10.12.4.

# Installs
## Git
By default git is not installed in macOS Sierra. The Xcode command line tools can be installed or you can install Git directly from a git mirror. The advantage of installing it from the mirror is Xcode lags behind the most up to date git version. Download and install the newest git version from the link below.
```

# Other Things
* A custom domain name can be created by purchasing your domain and setting this up in GitHub Pages settings. There are [instructions on GitHub](https://help.github.com/articles/using-a-custom-domain-with-github-pages/){:target="_blank"} on this process.
* If a custom domain name is used HTTPS is not possible through GitHub Pages settings but Cloudflare can be used to set this up. There are [instructions](https://www.goyllo.com/github/pages/free-cloudflare-ssl-for-custom-domain/){:target="_blank"} on a few other blogs about this.