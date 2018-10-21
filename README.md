# Racket Test Image For Azure Pipelines

This image is for running CI for Racket packages on Azure Pipelines.


## Example

If you have the following in your `.azure-pipelines.yml` file in the root of the project repo,
this will compile the code and run all tests defined in the package. 

```yaml
name: $(TeamProject)_$(BuildDefinitionName)_$(SourceBranchName)_$(Date:yyyy-MM-dd)$(Rev:.r)

resources:
  containers:
  - container: racket_azpipe
    image: hravnx/racket-azpipe:7.0

pool:
  vmImage: 'ubuntu-16.04'

container: racket_azpipe

steps:
- script: raco pkg install --auto
  displayName: Installing dependencies
- script: raco test -x .
  displayName: Running tests
```

