local setup, webdevicons = pcall(require, 'nvim-web-devicons')
if not setup then
  return
end

webdevicons.setup {
  default = false,
  color_icons = true,
  override_by_filename = {
     ["readme.md"] = {
       icon = "",
       color = "#BD77DC",
       name = "Readme"
     },
     ["changelog.md"] = {
       icon = "",
       color = "#BD77DC",
       name = "Changelog"
     },
     [".gitignore"] = {
       icon = "",
       color = "#F14C28",
       name = "Gitignore"
     },
     ["gemfile"] = {
       icon = "",
       color = "#701516",
       name = "Gemfile"
     },
     ["requirements.txt"] = {
       icon = "",
       color = "#3572A5",
       name = "Requirements"
     },
     ["go.mod"] = {
       icon = "",
       color = "#00ADD8",
       name = "Go"
     },
     ["go.sum"] = {
       icon = "",
       color = "#6F839E",
     },
     ["chart.yaml"] = {
       icon = "⎈",
       color = "#4B8BBE",
       name = "helm",
     },
     ["values.yaml"] = {
       icon = "⎈",
       color = "#4B8BBE",
       name = "helm",
     },
     ["values.schema.json"] = {
       icon = "⎈",
       color = "#4B8BBE",
       name = "helm",
     },
    [".helmignore"] = {
      icon = "⎈",
      color = "#4B8BBE",
      name = "helm",
    },
    [".editorconfig"] = {
      icon = "",
      color = "#6F839E",
      name = "EditorConfig",
    },
    [".shellcheckrc"] = {
      icon =  "󰆍",
      color = "#801013",
      name = "Shellcheck"
    },
    ["pyproject.toml"] = {
      icon = "",
      color = "#4B8DDE",
      name = "Pyproject"
    },
    ["setup.py"] = {
      icon = "",
      color = "#4B8DDE",
      name = "SetupPy"
    },
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
    [".air.toml"] = {
      icon = "󰖝",
      color = "#f2f2f2",
      name = "Air"
    },
    [".jest.config.js"] = {
      icon = "󰬑",
      color = "#853957",
      name = "Jest"
    },
    [".jest.config.json"] = {
      icon = "󰬑",
      color = "#853957",
      name = "Jest"
    },
    [".prettierrc"] = {
      icon = "󰫽",
      name = "Prettier"
    },
    [".prettierignore"] = {
      icon = "󰬗",
      color = "#CB2020",
      name = "PrettierIgnore"
    },
    [".eslintrc.js"] = {
      icon = "",
      color = "#4B32C3",
      name = "Eslint"
    },
    [".nvmrc"] = {
      icon = "󰋙",
      color = "#CAB841",
      name = "Nvmrc"
    },
    ["jsconfig.json"] = {
      icon = "",
      color = "#0078D3",
      name = "Jsconfig"
    },
    ["tsconfig.json"] = {
      icon = "",
      color = "#0078D3",
      name = "Jsconfig"
    },
    ["sonar-project.properties"] = {
      icon = "󰼮",
      color = "#CB2029",
      name = "Sonar"
    },
    ["nodemon.json"] = {
      icon = "",
      color = "#6CC24A",
      name = "Nodemon"
    },
    ["nest-cli.json"] = {
      icon = "󰄛",
      color = "#E0234E",
      name = "Nest"
    },
    ["openapi.json"] = {
      icon = "",
      color = "#6BA539",
      name = "Openapi"
    },
    ["swagger.json"] = {
      icon = "󰘦",
      color = "#6BA539",
      name = "Swagger"
    },
    ["swagger.yaml"] = {
      icon = "󰈙",
      color = "#6BA539",
      name = "Swagger"
    },
    ["cargo.toml"] = {
      icon = "󰏗",
      color = "#C27E42",
      name = "Cargo"
    },
    [".python-version"] = {
      icon = "󱔎",
      color = "#FFD43B",
      name = "Python"
    },
    ["mix.exs"] = {
      icon = "",
      color = "#A04FFF",
      name = "Mix",
    },
    ["mix.lock"] = {
      icon = "",
      color = "#CB2020",
      name = "MixLockFile",
    },
    ["formatter.exs"] = {
      icon = "",
      color = "#0078D1",
      name = "ElixirFormatter",
    },
     [".formatter.exs"] = {
      icon = "",
      color = "#0078D1",
      name = "ElixirFormatter",
    },
    [".credo.exs"] = {
      icon = "󰉢",
      color = "#AA04EE",
      name = "Credo",
    }
  },
  override_by_extension = {
    default = {
      icon = "",
      color = "#6F839E",
      name = "Default"
    },
    lock = {
      icon = "",
      color = "#8BE9FD",
      name = "lock"
    },
    sh = {
      icon = "",
      color = "#4d5a5e",
      name = "Shell"
    },
    env = {
      icon = "󰙪",
      name = "Env"
    },
    tmpl = {
      icon = "󰈙",
      color = "#3970E4",
      name = "Template"
    },
    tpl = {
      icon = "󰈙",
      color = "#3970E4",
      name = "Template"
    },
    tf = {
      icon = "󱁢",
      color = "#844FBA",
      name = "Terraform"
    },
    tfvars = {
      icon = "",
      color = "#844FBA",
      name = "Terraform"
    },
    tfstate = {
      icon = "",
      color = "#844FBA",
      name = "Terraform"
    },
    hcl = {
      icon = "",
      color = "#E3E4E6",
      name = "HCL"
    },
    properties = {
      icon = "",
      color = "#3970B4",
      name = "Properties"
    },
    makefile = {
      icon = "",
      color = "#F54842",
      name = "Make"
    },
    cert = {
      icon = "󰄤",
      color = "#3BD9DD",
      name = "Cert"
    },
    crt = {
      icon = "󰄤",
      color = "#3BD9DD",
      name = "Cert"
    },
    yml = {
      icon = "󰈙",
      color = "#f44336",
      name = "Yml",
    },
    yaml = {
      icon = "󰈙",
      color = "#f44336",
      name = "Yaml",
    },
  }
}
