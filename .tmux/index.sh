tmux_home=~/.tmux;
custom_dir=$tmux_home/custom;

# Load custom source files depending on tmux version.
# Only tmux version 2.1 and up has certain features
# enabled, so it is necessary to have different 
# configurations depending on the version.
load_tmux_version () {
  tmux_version="$(tmux -V)";
  if [[ $(echo "$tmux_version >= 2.1" | bc) -eq 1 ]]; then
    tmux source-file $custom_dir/tmux.2-1.conf;
  else 
    tmux source-file $custom_dir/tmux.2-0.conf;
  fi
  return 0;
}

# Load custom versions of tmux
load_tmux_version;

# Load special configurations
tmux source-file $tmux_home/general.conf;
tmux source-file $tmux_home/keys.conf;
tmux source-file $tmux_home/interface.conf;
