"=============================================================================
" Author: Enilagera
" VimRC: Version 1.0
"=============================================================================
" Impostazioni:
	set nocompatible
        syntax on
	set showcmd
	set encoding=utf-8
        set number
        filetype plugin on
"=============================================================================
" Utilizzi CTRL n e p per completare una parola che già esiste nel testo precedente
	set complete+=kspell
"=============================================================================
" Utilizzi CTRL x e k per completare una parola presente nel dizionario
	set dictionary+=/usr/share/dict/words
	set dictionary+=/usr/share/dict/italian
"=============================================================================
"Tasto F5 impostato per aggiungere le parentisi graffe (Posizionarsi ad inizio parola):
	map <F5> i{<Esc>ea}<Esc>
"=============================================================================
"Tasto F6 impostato come controllo della grafia:
	map <F6> :setlocal spell! spelllang=it<CR>
"=============================================================================
" Apri lo template di una tipologie di file dentro un file appena creato
	nnoremap ,html i<CR><ESC>:.-1read $HOME/.vim/html5template.html<CR>I<BS><ESC>j0i<BS><ESC>l`
	nnoremap ,tex i<CR><ESC>:.-1read $HOME/.vim/Template_CV.tex<CR>I<BS><ESC>j0i<BS><ESC>l`
"=============================================================================
" Scorciatorie basilari per il linguaggio LATEX
	autocmd FileType tex inoremap ,dc \begin{document}<Enter><Enter><Enter><++><Enter><Enter>\end{document}<Enter><Enter><++><Esc>6kf}i
	autocmd FileType tex inoremap ,fr \begin{frame}<Enter>\frametitle{}<Enter><Enter><++><Enter><Enter>\end{frame}<Enter><Enter><++><Esc>6kf}i
	autocmd FileType tex inoremap ,fi \begin{fitch}<Enter><Enter>\end{fitch}<Enter><Enter><++><Esc>3kA
	autocmd FileType tex inoremap ,bf \textbf{}<++><Esc>T{i	
	autocmd FileType tex inoremap ,enu \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><Enter><++><Esc>3kA\item<Space>
	autocmd FileType tex inoremap ,ite \begin{itemize}<Enter><Enter>\end{itemize}<Enter><Enter><++><Esc>3kA\item<Space>
	autocmd FileType tex inoremap ,tab \begin[tabular]<Enter><++><Enter>\end{tabular}<Enter><Enter><++><Esc>4kA{}<Esc>i
	autocmd FileType tex inoremap ,sec \section{}<Enter><Enter><++><Esc>2kf}i
	autocmd FileType tex inoremap ,ssec \subsection{}<Enter><Enter><++><Esc>2kf}i
	autocmd FileType tex inoremap ,sssec \subsubsection{}<Enter><Enter><++><Esc>2kf}i
"=============================================================================
