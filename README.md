# Get All Live Urls (galu)
[![License](https://img.shields.io/badge/license-MIT-_red.svg)](https://opensource.org/licenses/MIT)

Galu uses the output of for example [gau](https://github.com/lc/gau) or [waybackurls](https://github.com/tomnomnom/waybackurls) to determine which hosts are up, and only displays the url's of the live hosts.

# Usage:
Example:
```bash
$ echo "example.com" | gau --subs | galu
```

# Installation:
Please download the galu bash file and **ensure it's located within a directory included in the system's PATH.**

Example:
```bash
curl https://raw.githubusercontent.com/CrunchV1/galu/master/galu --output galu
mv galu /home/$USER/go/bin/
```

## Dependencies
Galu uses [httpx](https://github.com/projectdiscovery/httpx) and [unfurl](https://github.com/tomnomnom/unfurl) to filter out all the live hosts. Please make sure both those tools are correctly installed on your system.

# Useful or suggestions?
Let me know through [github issues](https://github.com/CrunchV1/galu/issues) or [discord](https://discord.gg/5Awt8b4Q)!


[comment]: <> (readme inspired by the gau readme, https://github.com/lc/gau)
