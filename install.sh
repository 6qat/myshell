sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl

sudo apt install zsh -y

5j
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
chmod a+x get_helm.sh
./get_helm.sh

helm repo add stable https://kubernetes-charts.storage.googleapis.com/

libvirt-clients
libvirt-daemon

https://zaiste.net/posts/shell-commands-rust/

ncdu (turbo du)
tldr (turbo man pages)
jq (command line json parser)
fd (find replacement)
bat (cat clone with syntax)
exa (ls replacement)
procs (ps alternative, https://github.com/dalance/procs)
dust (another du alternative)
starship (cross platform shell prompt)
ripgrep (grep alternative)
tokei (statistics about files, programming languages, etc.)
hyperfine (benchmark 2 program executions)
ytop (cargo install ytop)
bandwhich (network info)
grex (tool for generating regular expressions when user provide test cases, https://github.com/pemistahl/grex)
zoxide (cd replacement, https://github.com/ajeetdsouza/zoxide, use with 'z' alias)
nushell (modern shell)


