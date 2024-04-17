#!/usr/bin/env bash

LOG_FILE="$PREFIX/tmp/dotload-installer.log"

if [ ! -f "$LOG_FILE" ]; then
    echo -e "The log is missing, try to install again, then execute the command: \e[1m$0\e[0m"
    exit 1
fi

release_info="$PREFIX/etc/os-release"

os_name () {
    if [[ -f /etc/os-release ]]; then
        grep -Po '(?<=PRETTY_NAME=").*?(?=")' "$release_info"
    elif [[ "$(uname -o)" == "Android" ]]; then
        echo "Termux on Android™"
    else
        echo "$(uname -o) (Unknown)"
    fi
}

# noqa
uriencode() {
  s="${1//'%'/%25}"
  s="${s//$'\n'/%0A}"
  s="${s//'"'/%22}"
  s="${s//$'\r'/%0D}"
  s="${s//'#'/%23}"
  s="${s//'$'/%24}"
  s="${s//'&'/%26}"
  s="${s//'+'/%2B}"
  s="${s//' '/+}"
  s="${s//','/%2C}"
  s="${s//'/'/%2F}"
  s="${s//':'/%3A}"
  s="${s//';'/%3B}"
  s="${s//'*'/%2A}"
  s="${s//'='/%3D}"
  s="${s//'?'/%3F}"
  s="${s//'`'/%60}"
  s="${s//'<'/%3C}"
  s="${s//'>'/%3E}"
  s="${s//'@'/%40}"
  s="${s//$'\''/%27}"
  s="${s//'!'/%21}"
  s="${s//'['/%5B}"
  s="${s//']'/%5D}"
  printf %s "$s"
}

text="\
DESCRIBE YOUR PROBLEM HERE!

System info:

**OS**: \`$(os_name)\`
**Architecture**: \`$(uname -m)\`
**Kernel**: \`$(uname -r)\`

<details>
    <summary>Log</summary>

\`\`\`
$(cat "$LOG_FILE")
\`\`\`
</details>

<!-- generated by bug_report.sh -->\
"

# This method has been deprecated due to different behavior in Linux and Termux
# link="https://github.com/okineadev/dotload/issues/new$(curl -s -o /dev/null -w %{url_effective} --get --data-urlencode "body=$text" "")&labels=bug"

link="https://github.com/okineadev/dotload/issues/new/?body=$(uriencode "$text")&labels=bug"

echo -e "\n$link\n"
echo -e "  \e[1;32m1.\e[0m ☝️  Open this link in your browser"
echo -e "  \e[1;32m2.\e[0m Fill out the form with a description of your problem"