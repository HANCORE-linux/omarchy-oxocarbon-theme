set -l color00 '#161616'
set -l color01 '#3ddbd9'
set -l color02 '#33b1ff'
set -l color03 '#ee5396'
set -l color04 '#42be65'
set -l color05 '#be95ff'
set -l color06 '#ff7eb6'
set -l color07 '#f2f4f8'
set -l color08 '#525252'
set -l color09 '#78a9ff'
set -l color0A '#262626'
set -l color0B '#393939'
set -l color0C '#dde1e6'
set -l color0D '#ffffff'
set -l color0E '#82cfff'
set -l color0F '#08bdba'

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"" --color=bg+:$color00,bg:$color00,spinner:$color0E,hl:$color0D"" --color=fg:$color07,header:$color0D,info:$color0A,pointer:$color0E"" --color=marker:$color0E,fg+:$color06,prompt:$color0A,hl+:$color0D"
