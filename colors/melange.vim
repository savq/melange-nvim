hi clear
syntax reset
set t_Co=256
if &background == 'dark'
    let g:colors_name = 'melange_dark'
    runtime melange_dark.vim
elseif &background == 'light'
    let g:colors_name = 'melange_light'
    runtime melange_light.vim
endif
