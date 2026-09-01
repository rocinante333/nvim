local options = {
	laststatus = 3,
	ruler = false, --disable extra numbering
	showmode = false, --not needed due to lualine
	showcmd = false,
	wrap = false, --toggle bound to leader W
	mouse = "a", --enable mouse
	--clipboard = "unnamedplus", --system clipboard integration
	history = 100, --command line history
	swapfile = false, --swap just gets in the way, usually
	backup = false,
	undofile = true, --undos are saved to file
	cursorline = true, --highlight line
	ttyfast = true, --faster scrolling
	smoothscroll = true,
	title = true, --automatic window titlebar
	number = true, --numbering lines
	relativenumber = true, --toggle bound to leader nn
	numberwidth = 4,
	
	smarttab = true, --indentation stuff
	cindent = true,
	autoindent = false,
	tabstop = 4, --visual width of tab
	shiftwidth=4,
	softtabstop=4,
	
	foldmethod = "expr",
	foldlevel = 99, --disable folding, lower #s enable
	foldexpr = "nvim_treesitter#foldexpr()",
	
	termguicolors = true,
	
	ignorecase = true, --ignore case while searching
	smartcase = true, --but do not ignore if caps are used
	
	conceallevel = 2, --markdown conceal
	concealcursor = "nc",
	
	splitkeep = 'screen', --stablizie window open/close

	scrolloff = 50, --keep cursor in middle of screen
}

for k, v in pairs(options) do
	vim.opt[k] = v

	-- Make relative line number start at 1 instead of 0
	_G.custom_line_numbers = function()
		if vim.wo.relativenumber then
			return tostring(vim.v.relnum == 0 and 1 or vim.v.relnum + 1)
		end

		-- Insert mode: preserve normal absolute line numbers.
		return tostring(vim.v.lnum)
	end
	vim.opt.statuscolumn = "%s%=%{v:lua.custom_line_numbers()} "
end

vim.diagnostic.config({
	signs = false,
})
