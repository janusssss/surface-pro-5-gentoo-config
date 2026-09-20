if status is-interactive
    # Commands to run in interactive sessions can go here
    # 设置打开欢迎语
    set fish_greeting "$(date)"
end

starship init fish | source

# 替换ls命令
function ls
    command eza --icons $argv
end

# emerge命令自动sudo
function emerge
    command sudo emerge $argv
end

function reboot
    command sudo reboot
end
function poweroff
    command sudo poweroff
end
function rc-service
    command sudo rc-service
end

# grub
abbr grub 'LANGUAGE=en_US.UTF-8 LANG=en_US.UTF-8 sudo grub-mkconfig -o /boot/grub/grub.cfg'
