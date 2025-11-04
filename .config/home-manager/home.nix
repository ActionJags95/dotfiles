{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "jags";
  home.homeDirectory = "/home/jags";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "25.05"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = with pkgs; [
    # # Adds the 'hello' command to your environment. It prints a friendly
    # # "Hello, world!" when run.
    # pkgs.hello

    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
    	zsh
	zsh-autosuggestions
	zsh-syntax-highlighting
	zsh-completions
	git	
	btop
	fzf
	bat
	fastfetch
	nodejs_22
	tmux
	oh-my-posh
	zoxide
	neovim
  gcc
  cargo
  python3
  unzip
  go
  bun
    eza
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
    ".config/nvim".source = ~/dotfiles/.config/nvim;
    ".config/oh-my-posh".source = ~/dotfiles/.config/oh-my-posh;
    ".config/bat".source = ~/dotfiles/.config/bat;
    ".config/tmux".source = ~/dotfiles/.config/tmux;
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/jags/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    EDITOR = "nvim";
    POSH_CONFIG = "${config.home.homeDirectory}/.config/oh-my-posh/jags.toml";
  };

  # Let Home Manager install and manage itself.
  programs.bun.enable = true;
  programs.home-manager.enable = true;
  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
  };
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    initContent = ''
  eval "$(zoxide init zsh)"
  eval "$(oh-my-posh init zsh --config $POSH_CONFIG)"
'';
  };
  programs.git = {
    enable = true; 
    settings = {
      user = {
        name = "ActionJags95";
        email = "118545266+ActionJags95@users.noreply.github.com";
      };
      alias = {
        ci = "commit";
        co = "checkout";
        s = "status";
      };
    };
  };
}
