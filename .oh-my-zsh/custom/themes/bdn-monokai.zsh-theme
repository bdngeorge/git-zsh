setopt PROMPT_SUBST

local mon_white="%F{#FCFCFA}"
local mon_dim1="%F{#C1C0C0}"
local mon_dim3="%F{#727072}"
local mon_green="%F{#A9DC76}"
local mon_blue="%F{#78DCE8}"
local mon_purple="%F{#AB9DF2}"
local mon_red="%F{#FF6188}"
local mon_yellow="%F{#FFD866}"
local mon_orange="%F{#FC9867}"

local return_code="%(?..${mon_red}%? ↵$reset_color)"
local user_host="%B%(!.${mon_red}.${mon_green})%n@%m$reset_color"
local user_symbol='%(!.#.$)'
local current_dir="%B${mon_blue}%~$reset_color"

PROMPT='$PROMPT_NEWLINE\
${mon_dim3}╭─$reset_color\
${user_host} ${mon_white}🠶 ${current_dir}$(git_prompt_info) ${mon_white}🠶 ${mon_dim3}%T$reset_color
${mon_dim3}╰─${mon_white}%B${user_symbol}%b ${mon_white}'

ZSH_THEME_GIT_PROMPT_PREFIX="$reset_color ${mon_white}• ${mon_dim1}(${mon_orange}"
ZSH_THEME_GIT_PROMPT_SUFFIX="${mon_dim1})$reset_color"
ZSH_THEME_GIT_PROMPT_DIRTY="${mon_red}✗$reset_color"
ZSH_THEME_GIT_PROMPT_CLEAN="${mon_green}✓$reset_color"
