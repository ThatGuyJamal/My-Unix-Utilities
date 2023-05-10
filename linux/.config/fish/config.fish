if status is-interactive
    # Commands to run in interactive sessions can go here

    # Disables the fish default greet message on startup.
    set fish_greeting "" 

    set PATH $PATH ~/.cargo/bin
    starship init fish | source
end
