vim.g.mapleader = ","
vim.keymap.set("n", "<C-y>", ":update<CR>")
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<C-n>", "<cmd>nohl<CR>")

vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>n", "<esc>:tabprevious<CR>")
vim.keymap.set("n", "<leader>m", "<esc>:tabnext<CR>")
vim.keymap.set("n", "<leader>x", "<esc>:tabclose<CR>")

vim.keymap.set("n", "<C-b>", "<cmd>silent !tmux-builder %:p<CR>")

vim.api.nvim_create_autocmd('FileType', {
        pattern = {"c", "cpp", "h", "hpp", "objc", "objcpp", "cuda", "proto" },
        callback = function ()
            vim.keymap.set("n", "<leader>h", "<cmd>ClangdSwitchSourceHeader<CR>")
        end
    })
