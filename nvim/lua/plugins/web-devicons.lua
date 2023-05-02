local setup, webdevicons = pcall(require, 'nvim-web-devicons')
if not setup then
  return
end

local material_setup, material_icon = pcall(require, "nvim-material-icon")
if not material_setup then
	return
end

webdevicons.setup {
  default = false,
  color_icons = true,
  override = material_icon.get_icons(),
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
      icon =  material_icon.get_icon_by_filetype('sh', { default = false }),
      color = "#801013",
      name = "Shell"
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
      icon = "",
      color = "#eb4034",
      name = "Tflock"
    },
    ["pipevalve.yml"] = {
      icon = "󱡍",
      color = "#6fa1c9",
      name = "Pipevalve"
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
      icon = "",
      color = "#C21325",
      name = "Jest"
    },
    [".jest.config.json"] = {
      icon = "",
      color = "#C21325",
      name = "Jest"
    },
    [".prettierrc"] = {
      icon = material_icon.get_icon('.prettierrc.js', 'Prettier', { default = true }),
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
      icon = "",
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
      icon = "",
      color = "#76D04B",
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
      icon = material_icon.get_icon_by_filetype('yml', { default = true }),
      color = "#6BA539",
      name = "Swagger"
    },
    ["cargo.toml"] = {
      icon = "󰏗",
      color = "#C27E42",
      name = "Cargo"
    },
    [".python-version"] = {
      icon = "",
      color = "#FFD43B",
      name = "Python"
    }
  },
  override_by_extension = {
    lock = {
      icon = "",
      color = "#8BE9FD",
      name = "lock"
    },
    yaml = {
      icon =  material_icon.get_icon_by_filetype('yml', { default = true }),
      name = "Yml"
    },
    env = {
      icon = "",
      name = "Env"
    },
    default = {
      icon = "",
      color = "#6F839E",
      name = "Default"
    },
    tmpl = {
      icon =  material_icon.get_icon_by_filetype('yml', { default = true }),
      color = "#3970E4",
      name = "Template"
    },
    tpl = {
      icon =  material_icon.get_icon_by_filetype('yml', { default = true }),
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
    }
  }
}
