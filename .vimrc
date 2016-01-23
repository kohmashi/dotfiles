"==============================
" VIM設定ファイル (.vimrc)
" 2015/04/20 K.Mashimo
"==============================

if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
  set fileencodings=utf-8,latin1
endif

set nocompatible        " Use Vim defaults (much better!)
set bs=indent,eol,start         " allow backspacing over everything in insert mode
"set ai                 " always set autoindenting on
"set backup             " keep a backup file
set viminfo='20,\"50    " read/write a .viminfo file, don't store more
                       " than 50 lines of registers
set history=50          " keep 50 lines of command line history
set ruler               " show the cursor position all the time

" Only do this part when compiled with support for autocommands
if has("autocmd")
 augroup redhat
   " In text files, always limit the width of text to 78 characters
   autocmd BufRead *.txt set tw=78
   " When editing a file, always jump to the last cursor position
   autocmd BufReadPost *
   \ if line("'\"") > 0 && line ("'\"") <= line("$") |
   \   exe "normal! g'\"" |
   \ endif
 augroup END
endif

if has("cscope") && filereadable("/usr/bin/cscope")
  set csprg=/usr/bin/cscope
  set csto=0
  set cst
  set nocsverb
  " add any database in current directory
  if filereadable("cscope.out")
     cs add cscope.out
  " else add database pointed to by environment
  elseif $CSCOPE_DB != ""
     cs add $CSCOPE_DB
  endif
  set csverb
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
 syntax on
 set hlsearch
endif

if &term=="xterm"
    set t_Co=8
    set t_Sb=m
    set t_Sf=m
endif


" Add personal Settings @mashimo-k
set number      " 行番号を表示する
set tags=./.tags;/root,tags  " ctagsファイルを読み込み[タグジャンプ]
set ts=4        " tabサイズを4に指定
set nowrap      " 画面右端で折り返ししない
set title       "編集中のファイル名を表示

set laststatus=2   " ステータス行を常に表示
set cmdheight=2    " メッセージ表示欄を2行確保
set showmatch      " 対応する括弧を強調表示
set helpheight=999 " ヘルプを画面いっぱいに開く
"set list           " 不可視文字を表示
" 不可視文字の表示記号指定
"set listchars=tab:?\ ,eol:?,extends:?,precedes:?
"set listchars=tab:≫-,trail:-,eol:?,extends:≫,precedes:≪,nbsp:%

set backspace=indent,eol,start "Backspaceキーの影響範囲に制限を設けない
set whichwrap=b,s,h,l,<,>,[,] "行頭行末の左右移動で行をまたぐ
set scrolloff=8                "上下8行の視界を確保
set sidescrolloff=16           " 左右スクロール時の視界を確保
set sidescroll=1               " 左右スクロールは一文字づつ行う

"set expandtab "タブ入力を複数の空白入力に置き換える
"set tabstop=2 "画面上でタブ文字が占める幅
"set shiftwidth=2 "自動インデントでずれる幅
set softtabstop=2 "連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set autoindent "改行時に前の行のインデントを継続する
set smartindent "改行時に入力された行の末尾に合わせて次の行のインデントを増減する

set hlsearch "検索文字列をハイライトする
set incsearch "インクリメンタルサーチを行う
set ignorecase "大文字と小文字を区別しない
set smartcase "大文字と小文字が混在した言葉で検索を行った場合に限り、大文字と小文字を区別する
set wrapscan "最後尾まで検索を終えたら次の検索で先頭に移る
set gdefault "置換の時 g オプションをデフォルトで有効にする

set wildmode=longest,full

"-------------------------
" Key mapping.
"-------------------------
" global
map <C-g> :Gtags
map <C-h> :Gtags -f %<CR>
map <C-j> :GtagsCursor<CR>
map <C-n> :cn<CR>
map <C-p> :cp<CR>
" QuickRun
map <C-q> :QuickRun



""---------------------------
"" Start Neobundle Settings.
""---------------------------
"" bundleで管理するディレクトリを指定
"set runtimepath+=~/.vim/bundle/neobundle.vim/
" 
"" Required:
"call neobundle#begin(expand('~/.vim/bundle/'))
" 
"" neobundle自体をneobundleで管理
"NeoBundleFetch 'Shougo/neobundle.vim'
" 
"" 今後このあたりに追加のプラグインをどんどん書いて行きます！！"
"NeoBundle 'scrooloose/nerdtree'  " NERDTreeを設定
"" NeoBundle 'Townk/vim-autoclose'  " 自動括弧閉じ挿入
"NeoBundle 'thinca/vim-quickrun'  " vim開いたまま関数実行
"NeoBundle 'grep.vim'             " grep
"NeoBundle 'scrooloose/syntastic' " シンタックスチェック
"NeoBundle 'vim-scripts/taglist.vim' " TagList
"   
"call neobundle#end()
" 
"" Required:
"filetype plugin indent on
"  
"" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
"" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
"NeoBundleCheck
"  
""-------------------------
"" End Neobundle Settings.
""-------------------------

