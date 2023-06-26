local setup, webdevicons = pcall(require, 'nvim-web-devicons')
if not setup then return end

webdevicons.setup {
    default = false,
    color_icons = true,
    override = {default = {icon = "", color = "#6F839E", name = "Default"}},
    override_by_filename = {
        ["readme.md"] = {icon = "󰋼", color = "#69a3df", name = "Readme"},
        ["changelog.md"] = {
            icon = "󰄴",
            color = "#99BE77",
            name = "Changelog"
        },
        [".gitignore"] = {icon = "", color = "#F14C28", name = "Gitignore"},
        ["gemfile"] = {icon = "", color = "#701516", name = "Gemfile"},
        ["requirements.txt"] = {
            icon = "",
            color = "#3572A5",
            name = "Requirements"
        },
        ["go.mod"] = {icon = "", color = "#00ADD8", name = "Gomod"},
        ["go.sum"] = {icon = "", color = "#ec407a", name = "Gosum"},
        ["chart.yaml"] = {icon = "⎈", color = "#4B8BBE", name = "helm"},
        ["values.yaml"] = {icon = "⎈", color = "#4B8BBE", name = "helm"},
        ["values.schema.json"] = {
            icon = "⎈",
            color = "#4B8BBE",
            name = "helm"
        },
        [".helmignore"] = {icon = "⎈", color = "#4B8BBE", name = "helm"},
        [".editorconfig"] = {
            icon = "",
            color = "#6F839E",
            name = "EditorConfig"
        },
        [".shellcheckrc"] = {
            icon = "",
            color = "#7ACECE",
            name = "Shellcheck"
        },
        ["pyproject.toml"] = {
            icon = "",
            color = "#4B8DDE",
            name = "Pyproject"
        },
        ["setup.py"] = {icon = "", color = "#4B8DDE", name = "SetupPy"},
        [".terraform.lock.hcl"] = {
            icon = "",
            color = "#eb4034",
            name = "Tflock"
        },
        [".goreleaser.yaml"] = {
            icon = "󱓞",
            color = "#00ADD8",
            name = "Goreleaser"
        },
        ["azure-pipelines.yml"] = {
            icon = "",
            color = "#0078D7",
            name = "AzurePipelines"
        },
        [".golangci.yml"] = {
            icon = "󱏚",
            color = "#17AfC2",
            name = "Golangci"
        },
        [".golangci.yaml"] = {
            icon = "󱏚",
            color = "#17AfC2",
            name = "Golangci"
        },
        [".golangci.toml"] = {
            icon = "󱏚",
            color = "#17AfC2",
            name = "Golangci"
        },
        [".golangci.json"] = {
            icon = "󱏚",
            color = "#17AfC2",
            name = "Golangci"
        },
        [".air.toml"] = {icon = "󰀸", color = "#f2f2f2", name = "Air"},
        [".jest.config.js"] = {icon = "󰬑", color = "#853957", name = "Jest"},
        [".jest.config.json"] = {
            icon = "󰬑",
            color = "#853957",
            name = "Jest"
        },
        [".prettierrc"] = {icon = "󰬗", color = "#e76d8e", name = "Prettier"},
        [".prettierignore"] = {
            icon = "󰬗",
            color = "#e76d8e",
            name = "PrettierIgnore"
        },
        [".eslintrc.js"] = {icon = "", color = "#4B32C3", name = "Eslint"},
        [".nvmrc"] = {icon = "󰋙", color = "#CAB841", name = "Nvmrc"},
        ["jsconfig.json"] = {icon = "", color = "#0078D3", name = "Jsconfig"},
        ["tsconfig.json"] = {icon = "", color = "#0078D3", name = "Jsconfig"},
        ["sonar-project.properties"] = {
            icon = "󰼮",
            color = "#CB2029",
            name = "Sonar"
        },
        ["nodemon.json"] = {icon = "", color = "#6CC24A", name = "Nodemon"},
        ["nest-cli.json"] = {icon = "󰄛", color = "#E0234E", name = "Nest"},
        ["openapi.json"] = {icon = "", color = "#6BA539", name = "Openapi"},
        ["swagger.json"] = {icon = "󰘦", color = "#6BA539", name = "Swagger"},
        ["swagger.yaml"] = {icon = "󰈙", color = "#6BA539", name = "Swagger"},
        ["cargo.toml"] = {icon = "󰏗", color = "#C27E42", name = "Cargo"},
        [".python-version"] = {
            icon = "󰌠",
            color = "#ffe873",
            name = "PythonVersion"
        },
        ["mix.exs"] = {icon = "", color = "#A04FFF", name = "Mix"},
        ["mix.lock"] = {icon = "", color = "#CB2020", name = "MixLockFile"},
        ["formatter.exs"] = {
            icon = "",
            color = "#0078D1",
            name = "ElixirFormatter"
        },
        [".formatter.exs"] = {
            icon = "",
            color = "#0078D1",
            name = "ElixirFormatter"
        },
        [".credo.exs"] = {icon = "󰉢", color = "#AA04EE", name = "Credo"},
        [".yamllint"] = {icon = "", color = "#fbc02d", name = "YamlLint"},
        [".yamllint.yml"] = {icon = "", color = "#fbc02d", name = "YamlLint"},
        [".yamllint.yaml"] = {
            icon = "",
            color = "#fbc02d",
            name = "YamlLint"
        },
        ["pre-commit"] = {icon = "", color = "#f56b67", name = "GitHook"},
        ["post-commit"] = {icon = "", color = "#f56b67", name = "GitHook"},
        ["pre-push"] = {icon = "", color = "#f56b67", name = "GitHook"},
        ["pre-receive"] = {icon = "", color = "#f56b67", name = "GitHook"},
        ["post-receive"] = {icon = "", color = "#f56b67", name = "GitHook"},
        ["ruff.toml"] = {icon = "󱐋", color = "#fbc11a", name = "Ruff"},
        [".ruff.toml"] = {icon = "󱐋", color = "#fbc11a", name = "Ruff"},
        [".pre-commit-config.yaml"] = {
            icon = "󰜘",
            color = "#eda73d",
            name = "PreCommit"
        },
        [".pre-commit-hooks.yaml"] = {
            icon = "󰜘",
            color = "#eda73d",
            name = "PreCommitHook"
        },
        ["tox.ini"] = {icon = "", color = "#b5c761", name = "Tox"},
        ["playbook.yml"] = {
            icon = "󱂚",
            color = "#dadada",
            name = "AnsiblePlaybook"
        },
        ["requirements.yml"] = {
            icon = "󱂚",
            color = "#dadada",
            name = "AnsibleRequirements"
        },
        ["ansible.cfg"] = {
            icon = "",
            color = "#eb3500",
            name = "AnsibleConfig"
        },
        ["hosts"] = {icon = "", color = "#bbbbbb", name = "Hosts"}
    },
    override_by_extension = {
        lock = {icon = "", color = "#eb4034", name = "lock"},
        sh = {icon = "", color = "#f56b67", name = "Shell"},
        env = {icon = "󰙪", name = "Env"},
        tmpl = {icon = "󰈙", color = "#3970E4", name = "Template"},
        tpl = {icon = "󰈙", color = "#3970E4", name = "Template"},
        tf = {icon = "󱁢", color = "#844FBA", name = "Terraform"},
        tfvars = {icon = "", color = "#844FBA", name = "Terraform"},
        tfstate = {icon = "", color = "#844FBA", name = "Terraform"},
        hcl = {icon = "", color = "#E3E4E6", name = "HCL"},
        properties = {icon = "", color = "#3970B4", name = "Properties"},
        makefile = {icon = "", color = "#F54842", name = "Make"},
        cert = {icon = "󰄤", color = "#3BD9DD", name = "Cert"},
        crt = {icon = "󰄤", name = "Cert"},
        yml = {icon = "󰈙", color = "#f44336", name = "Yml"},
        yaml = {icon = "󰈙", color = "#f44336", name = "Yaml"},
        drawio = {icon = "", color = "#f08705", name = "Drawio"},
        puml = {icon = "󰈏", color = "#ebebeb", name = "Puml"},
        pu = {icon = "󰈏", color = "#ebebeb", name = "Puml"},
        py = {icon = "󰌠", color = "#ffd43b", name = "Python"},
        log = {icon = "󱞎", color = "#afb42b", name = "Log"},
        out = {icon = "󱀹", color = "#dadada", name = "Out"},
        tmux = {icon = "", color = "#404042", name = "Tmux"}
    }
}
