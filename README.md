# Get All Live Urls (galu)
[![License](https://img.shields.io/badge/license-MIT-_red.svg)](https://opensource.org/licenses/MIT)

Galu uses the output of for example [gau](https://github.com/lc/gau) or [waybackurls](https://github.com/tomnomnom/waybackurls) to determine which hosts are up, and only displays the url's of the live hosts.

# Usage:
Example:
```bash
$ echo "example.com" | gau --subs | galu
```

# Installation:
Download the galu bash file and place it into a directory that it's in the system's PATH.

example:
```bash
curl https://raw.githubusercontent.com/CrunchV1/galu/master/galu --output galu
mv galu /usr/local/sbin
```

# Useful or suggestions?
Let me know through [github issues](https://github.com/CrunchV1/galu/issues) or [discord](https://discord.gg/5Awt8b4Q)!


[comment]: <> (readme inspired by the gau readme, https://github.com/lc/gau)
