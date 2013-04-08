node.override['bash_it'] ={
  'enabled_plugins' => {
    'aliases'    => %w[general git textmate],
    'completion' => %w[defaults git git_flow brew gem rake ssh],
    'plugins'    => %w[base browser fasd git java osx python rvm ssh tmux vagrant ]
  },
  'custom_plugins' => {
      "pivotal_workstation" => %w[bash_it/custom/ensure_usr_local_bin_first.bash],
      "scala_workstation" => %w[
        bash_it/custom/aliases.bash
        bash_it/custom/base.bash
        bash_it/custom/exports.bash
        bash_it/custom/functions.bash
      ]
  },
  'theme' => 'roderik',
  'dir' => '/etc/bash_it',
  'repository' => 'https://github.com/roderik/bash-it.git'
}

if node["platform"] == "ubuntu"
    node.override["bash_it"]["bashrc_path"]="/etc/bash.bashrc"
else
    node.override["bash_it"]["bashrc_path"]="/etc/bashrc"
end
