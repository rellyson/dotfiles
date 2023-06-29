local setup, nvimtree = pcall(require, 'nvim-tree')
if not setup then return end

-- recommended settings
vim.g.loaded = 1
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd([[ highlight NvimTreeFolderName guifg=#aeafda ]])
vim.cmd([[ highlight NvimTreeOpenedFolderName guifg=#aeafda ]])
vim.cmd([[ highlight NvimTreeEmptyFolderName guifg=#aeafda ]])

vim.cmd([[ highlight NvimTreeFolderIcon guifg=#8788ab ]])
vim.cmd([[ highlight NvimTreeIndentMarker guifg=#6f708f ]])

vim.cmd([[ highlight NvimTreeFileNew guifg=#6fa868 ]])
vim.cmd([[ highlight NvimTreeFileStaged guifg=#6fa868 ]])
vim.cmd([[ highlight NvimTreeFileDirty guifg=#948f6d ]])
vim.cmd([[ highlight NvimTreeFileDeleted guifg=#c14a4a ]])
vim.cmd([[ highlight NvimTreeFileIgnored guifg=#6F839E ]])

nvimtree.setup {
    diagnostics = {
        enable = true,
        show_on_dirs = false,
        icons = {hint = "󱩎", info = "", warning = "󱈸", error = ""}
    },
    filters = {
        dotfiles = false,
        custom = {
            "node_modules", ".git", ".cache", ".DS_Store", ".vscode",
            ".egg-info", "__pycache__"
        },
        exclude = {
            ".gitignore", ".gitmodules", ".gitkeep", ".gitattributes",
            ".githooks", ".gitconfig"
        }
    },
    git = {enable = true, ignore = false, show_on_dirs = true},
    view = {adaptive_size = true, side = 'left'},
    update_focused_file = {enable = true, update_cwd = false},
    renderer = {
        icons = {
            webdev_colors = true,
            glyphs = {
                symlink = "",
                folder = {
                    arrow_closed = "",
                    arrow_open = "",
                    default = "",
                    open = "",
                    empty = "",
                    empty_open = "",
                    symlink = "",
                    symlink_open = ""
                },
                git = {
                    unstaged = "",
                    staged = "",
                    unmerged = "",
                    renamed = "",
                    untracked = "",
                    deleted = "",
                    ignored = ""
                }
            }
        },
        indent_markers = {enable = true},
        special_files = {
            "README.md", "CHANGELOG.md", "LICENSE", "LICENSE.md", "Makefile",
            "package.json", "Cargo.toml", "go.mod", "pyproject.toml",
            "Dockerfile"
        },
        symlink_destination = false
    },
    actions = {open_file = {window_picker = {enable = false}}}
}

-- open nvimtree on setup
local function open_nvim_tree(data)
    -- buffer is a [No Name]
    local no_name = data.file == "" and vim.bo[data.buf].buftype == ""

    -- buffer is a directory
    local directory = vim.fn.isdirectory(data.file) == 1

    if not no_name and not directory then return end

    -- change to the directory
    if directory then vim.cmd.cd(data.file) end

    -- open the tree
    require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({"VimEnter"}, {callback = open_nvim_tree})
