# Load custom source files depending on tmux version.
# Only tmux version 2.1 and up has certain features
# enabled, so it is necessary to have different 
# configurations depending on the version.
load_tmux_version () {
  tmux_home=~/.tmux;
  tmux_version="$(tmux -V)";
  if [[ $(echo "$tmux_version >= 2.1" | bc) -eq 1 ]]; then
    tmux source-file $tmux_home/tmux.2-1.conf;
  else 
    tmux source-file $tmux_home/tmux.2-0.conf;
  fi
  return 0;
}

load_tmux_version;
