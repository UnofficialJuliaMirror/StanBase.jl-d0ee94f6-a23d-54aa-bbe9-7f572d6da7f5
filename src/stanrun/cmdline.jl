"""

# cmdline 

Recursively parse the model to construct command line. 

### Method
```julia
cmdline(m)
```

### Required arguments
```julia
* `m::CmdStanSampleModel`                : CmdStanSampleModel
```

### Related help
```julia
?CmdStanSampleModel                      : Create a CmdStanSampleModel
```
"""
function cmdline(m, id)
  
  #=
  `./bernoulli3 help`,
  =#
  
  cmd = ``
  if isa(m, HelpModel)
    # Inserts the executable for unix and windows
    cmd = `$(m.exec_path)`

    # `help` specific portion of the model
    cmd = `$cmd $(split(lowercase(string(typeof(m))), '.')[end])`
  end
  
  cmd
  
end

