aunmenu *

if exists("did_install_default_menus")
	unlet did_install_default_menus
endif

amenu Menu.simple :exe "source ". vim_rc_dir ."/simple_menu.vim"<cr>
source $VIMRUNTIME/menu.vim
