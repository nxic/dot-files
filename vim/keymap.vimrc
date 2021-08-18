"******************************************"
"******************************************"
" K    K EEEEEE Y   Y M    M   AA   PPPPP  "
" K   K  E       Y Y  MM  MM  A  A  P    P "
" KKKK   EEEEE    Y   M MM M A    A P    P "
" K  K   E        Y   M    M AAAAAA PPPPP  "
" K   K  E        Y   M    M A    A P      "
" K   K  EEEEEE   Y   M    M A    A P      "
"******************************************"
"******************************************"

" source Keybind
nmap <C-F7> :so ~/.vimrc<CR>

" close bindings USE WITH CAUTION

nmap <M-3> :wq!<CR>
nmap <M-4> :bd<CR>
nmap <M-5> :q!<CR>

"" ALE go to definition
"nmap <C-b> :ALEGoToDefinitionInVSplit<CR>

"" pageUp pageDown mapping
nmap <M-j> 10j
nmap <M-k> 10k

"" nerdtree keybind
nmap <M-1> :NERDTreeToggle<CR>

"" tab changes with Alt+h Alt+l
nmap <M-h> :bp<CR>
nmap <M-l> :bn<CR>

"" full terminal
nmap <M-F12> :sh<CR>
"" windowed terminal
nmap <M-F11> :ter<CR>

"" windowed terminal
" nmap <M-F11> :UnMinify<CR>


"" Git blame toggle keybind
function! s:BlameToggle() abort
  let found = 0
  for winnr in range(1, winnr('$'))
    if getbufvar(winbufnr(winnr), '&filetype') ==# 'fugitiveblame'
      exe winnr . 'close'
      let found = 1
    endif
  endfor
  if !found
    Git blame
  endif
endfunction

nmap <silent><M-a> :call <SID>BlameToggle()<CR>
nmap <silent><M-q> :GitMessenger<CR>

"" find grep with fzf
nmap <C-e> :Files<CR>
nmap <C-f> :Rg<CR>

"" youCompleteMe bindings
" see .vimrc#L451

"" ezFold
nmap <Space> za

"" ez indent
nmap > >>
nmap < <<

"" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv;

"" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"" ez resize window
nnoremap <C-right> :5winc ><CR>
nnoremap <C-left> :5winc <<CR>
nnoremap <C-down> :resize +5<cr>
nnoremap <C-up> :resize -5<cr>

"" Switching windows
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

"" Find in center of display
nnoremap n nzzzv
nnoremap N Nzzzv

"" Abbr
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall


" noremap ; :

"" COC keymaps

nmap <silent> gd <Plug>(coc-definition);

nmap <Leader><space> :noh<CR>
