

	" Plugins:
	" list all plugins you want to have like this:
	"   Plugin "foo.vim" for vim.org-hosted stuff
	"   Plugin "owner/project" for github-hosted stuff
	"   Plugin "git://git.wincent.com/command-t.git" for arbitrary URLs
	" install ones that are missing with :BundleInstall
	" install/upgrade them all with :BundleInstall!
	" search for new ones with :BundleSearch keyword
	" bundles are kept in <VIMPATH (or VARPATH) /vim/bundle/

	" Navigation:
	Plugin 'vim-scripts/mru.vim'				" manage Most Recently Used (MRU) files; TODO: see ctrlp.vim: Fuzzy file, buffer, mru, tag, etc finder.
	"Plugin 'fholgado/minibufexpl.vim'			" Elegant buffer explorer - takes very little screen space
	"Plugin 'edsono/vim-matchit'				" Configure % to match more than just single characters for HTML, LateX, and many other languages. included in the standard vim distribution since v 6.0.
	Plugin 'majutsushi/tagbar'					" browse the tags of the current file and get an overview of its structure
	Plugin 'sjl/gundo.vim'						" Use the hidden power of Vim's undo tree		
	" Notes Taking:
	Plugin 'Rykka/riv.vim'						" Taking notes with reStructuredText:
	Plugin 'Rykka/rhythm.css'
	Plugin 'Rykka/InstantRst'					" preview rst document instantly.
	Plugin 'tpope/vim-characterize'				" Expand vim Unicode character metadata to Emoji, HTML, Unicode names (on top of default' decimal, octal, and hex)
	" Markdown:
	Plugin 'godlygeek/tabular'					" vim script for text filtering and alignment
	Plugin 'plasticboy/vim-markdown'			" Markdown syntax highlighting, matching rules and mappings
	Plugin 'suan/vim-instant-markdown'			" instant Markdown previews from Vim + a browser
	" Visual Helpers:
	Plugin 'bling/vim-airline'					" lean and mean status/tabline for vim that's lights as air
	" Coding:
	Plugin 'Chiel92/vim-autoformat'				" easy code formatiing in Vim
	Plugin 'scrooloose/syntastic'				" Code syntax checking hacks for Vim
	Plugin 'closetag.vim'						" functions and mappings to close open HTML/XML tags
	Plugin 'ap/vim-css-color'					" Preview colors in source while editing css (hexa, rgb; Less, Sass)
	Plugin 'groenewege/vim-less'				" Vim syntax for Less (dynamic CSS)
	Plugin 'othree/html5.vim'					" HTML5 + inline SVG omnicomplete function, indent and syntax for Vim.
	Plugin 'pangloss/vim-javascript'			" Improved syntax and indent plugins v >=7.4 with patches 1-7.
	Plugin 'leshill/vim-json'					" json syntax highlighting
	"Plugin 'StanAngeloff/php.vim'				" Up to date PHP syntax (5.3-5.6 support)
	"Plugin 'taglist.vim'						" overview of the source code's structure, allows you to efficiently browse through source code files for many languages.
	" Typing Efficiency Improvers_Automation:
	Plugin 'tpope/vim-surround'					" Change the Surroundings of Text
	Plugin 'tpope/vim-commentary'				" Quicker Commenting/Uncommenting
	Plugin 'tpope/vim-repeat'					" Add repeat . to addons and unrepeatable vanilla commands
	"Plugin 'Smart-Tabs'						" use tabs for indent (beg. of lines), spaces for alignment
		" Completion:
		"Plugin 'marijnh/tern_for_vim'			" Javascript
		Plugin 'ervandew/supertab'				" use <Tab> for all ur insert completions needs
		" DOIN Evaluating SnipMate replacement -- YouCompleteMe breaks SnipMate
		"Plugin 'sirver/ultisnips'				" powerful snippets engine
		"Plugin 'honza/vim-snippets'			" snippets (to use with ultisnips)
		"Plugin 'Valloric/YouCompleteMe'		" as-u-type, fuzzy-search code completion engine for Vim.
	" Git:
	"Plugin 'tpope/vim-git'						" Syntax higlihting and more for Vim <7.2
	"Plugin 'tpope/vim-fugitive'				" run any git command (that generate ~no output) from inside Vim. DOIN
	" Style:
	Plugin 'altercation/vim-colors-solarized'
	Plugin 'w0ng/vim-hybrid'					" dark colour scheme for Vim & gVim v7.3+
	Plugin 'guns/xterm-color-table.vim'			" See all 256 xterm colors right in Vim
