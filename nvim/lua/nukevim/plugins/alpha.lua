local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")
local datetime = os.date("󰃭 %d-%m-%Y   %H:%M:%S")
--local w = require("weather")
 --" .. w.strfeed .. w.cond,
dashboard.section.header.val = {					     
"               ┌╓▄▄▄▄▄▄▄           ",
"          ┌▄████████████████▄▄        ",
"       ┌▄███████████████████████▄      ",
"     ┌▄█████▀▀█████████████▀██████▄    ",
"    ▄█████▀   └██████████▀    ▀█████   " ,
"   ▐████▀       ████████▀      └█████╕    ███╗  ██╗ ██╗   ██╗ ██╗  ██╗ ███████╗ ██╗   ██╗ ██╗ ███╗   ███╗",
"  ╒████▀         ▀█████┘         █████    ████  ██║ ██║   ██║ ██║ ██╔╝ ██╔════╝ ██║   ██║ ██║ ████╗ ████║",
"  ████▌         ┌▄█▀▀▀█▄          ████▌   ██╔██╗██║ ██║   ██║ █████═╝  █████╗   ╚██╗ ██╔╝ ██║ ██╔████╔██║",
"  ████▌┌┌┌┌┌┌┌┌╓█▌     █▌╓╓╓╓╓╓╓╓╓████▌   ██║╚████║ ██║   ██║ ██╔═██╗  ██╔══╝    ╚████╔╝  ██║ ██║╚██╔╝██║",
"  ████████████████    ╓███████████████▌   ██║ ╚███║ ╚██████╔╝ ██║ ╚██╗ ███████╗   ╚██╔╝   ██║ ██║ ╚═╝ ██║",
"  ▐███████████████▀███▀███████████████▌   ╚═╝  ╚══╝  ╚═════╝  ╚═╝  ╚═╝ ╚══════╝    ╚═╝    ╚═╝ ╚═╝     ╚═╝",
"   ██████████████      ╙██████████████     Aksshay88                             ".. datetime,
"   └███████████▀        └████████████",
"     ▀████████▀           ▀████████▀",
"      ╙███████▄          ╓▄██████▀",
"        └▀█████████████████████▀",
"            ▀▀████████████▀▀		",
}

dashboard.section.buttons.val = {
	dashboard.button("E", "  > New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("R", "  > Recent", ":Telescope oldfiles<CR>"),
	dashboard.button("S", "  > Settings", ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
	dashboard.button("K", " > Keymaps", ":e ~/.config/nvim/keymaps.txt <CR>"),
	dashboard.button("Q", "󰿅  > Quit NVIM", ":qa<CR>"),
}

dashboard.section.footer.val = {
	"!!!Hello! This is Aksshay88!!",
}

alpha.setup(dashboard.opts)

vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
