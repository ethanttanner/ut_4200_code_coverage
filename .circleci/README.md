# Assignment Documentation

## Part 1: Setting Up the CircleCI Pipeline

### Clone Repository:
### Configure .circleci/config.yml:

## Part 2: Retrieving Artifacts Using the CircleCI API

### Create API Token:
### Authentication Script:
### Retrieve Artifacts:
### Display/Save Artifacts:

# Retrieving Artifacts
### After the pipeline runs, you can retrieve artifacts from the /tmp/artifacts directory. In this case, the key artifact is the code coverage report (coverage-report.txt). These artifacts are valuable for:

# Pitfalls to Avoid

### Path Definitions: Ensure that paths used in commands match your project's structure.
### Artifact Naming: Use descriptive names for artifacts to avoid confusion.
### Dependencies: Confirm that the required dependencies are installed in the chosen Docker image.
