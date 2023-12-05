return {
	"nvim-tree/nvim-tree.lua",
    version = "*",
    cmd = "NvimTreeToggle",
    dependencies = 
    {
    "nvim-tree/nvim-web-devicons",
    },
    config = function()
    require("nvim-tree").setup {}
    end,
    vim.keymap.set("n",":ee", "<cmd>NvimTreeToggle<CR>") -- Toggle file explorer on 'ee' key press
}