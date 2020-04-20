" Add the dein installation directory into runtimepath
set runtimepath+=~/AppData/Local/nvim/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/AppData/Local/nvim/dein')
  call dein#begin('~/AppData/Local/nvim/dein')

  call dein#add('~/AppData/Local/nvim/dein/repos/github.com/Shougo/dein.vim')

  " Aniseed
  call dein#add('Olical/aniseed', { 'rev': 'develop' })
  call dein#add('bakpakin/fennel.vim')
  call dein#add('guns/vim-sexp')
  call dein#add('tpope/vim-sexp-mappings-for-regular-people')

  " Appearance
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('morhetz/gruvbox')
  call dein#add('kethku/golden-ratio')
  call dein#add('ryanoasis/vim-devicons')
  call dein#add('yuttie/comfortable-motion.vim')
  call dein#add('gcmt/taboo.vim')
  call dein#add('plasticboy/vim-markdown')
  call dein#add('wsdjeg/dein-ui.vim')

  " General Settings
  " aumatically set indent size
  call dein#add('tpope/vim-sleuth')
  " remove buffers without closing window
  call dein#add('qpkorr/vim-bufkill')
  " floating terminal
  call dein#add('kethku/vim-floaterm')
  " additional vim target objects
  call dein#add('wellle/targets.vim')
  " use neovim in browsers
  call dein#add('glacambre/firenvim', { 'hook_post_update': { _ -> firenvim#install(0) } })

  " Completion
  call dein#add('neoclide/coc.nvim', { 'rev': 'release' })
  call dein#add('junegunn/fzf', { 'merged': 0 })
  call dein#add('junegunn/fzf.vim')

  " Git
  " git-diff in gutters
  call dein#add('airblade/vim-gitgutter')
  " git wrapper (:Git or :G)
  call dein#add('tpope/vim-fugitive')

  " Key Bindings
  " comment/uncomment (:gc)
  call dein#add('tpope/vim-commentary')
  call dein#add('tpope/vim-surround')

  " TypeScript
  call dein#add('leafgarland/typescript-vim')
  call dein#add('ianks/vim-tsx')

  call dein#add('Shougo/deoplete.nvim')

  call dein#end()
  call dein#save_state()
endif

lua require('aniseed.dotfiles')
