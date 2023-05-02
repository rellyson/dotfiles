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
      icon = "",
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
    }
  }
}
