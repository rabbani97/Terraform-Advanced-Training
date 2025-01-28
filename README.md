# Terraform Project Structure Guide

This guide provides an overview of recommended Terraform project structures for different scales and environments, as well as detailed explanations on using and structuring modules for effective infrastructure management.

## Table of Contents
- [Small Projects](#small-projects)
- [Bigger Projects](#bigger-projects)
- [Multiple Environments](#multiple-environments)
- [Using Modules](#using-modules)
- [Module Structure](#module-structure)
- [Example Folder Structure](#example-folder-structure)

## Small Projects
For small-scale projects, the following files are primarily used:
- **main.tf** - Calls modules, locals, and data sources to create resources.
- **variables.tf** - Contains variable declarations used across the project.
- **outputs.tf** - Includes outputs from the resources created.
- **defaults.tf** - Specifies version requirements for Terraform and providers.

## Bigger Projects
For larger projects, the `main.tf` file is typically segmented into multiple files:
- **storage.tf** - Manages storage-related resources.
- **compute.tf** - Manages compute-related resources.
- **iam.tf** - Manages IAM resources.
- Common files include:
  - **variables.tf**
  - **outputs.tf**
  - **defaults.tf**

## Multiple Environments
For managing multiple environments like development, staging, and production:
- **environments/** - A directory for environment-specific variable files:
  - **dev.tfvars** - Specific to the development environment.
  - **staging.tfvars** - Specific to the staging environment.
  - **prod.tfvars** - Specific to the production environment.

## Using Modules
### Benefits of Using Modules
- **Reusability:** Reduces duplication by reusing configurations.
- **Maintainability:** Simplifies updates and management.
- **Encapsulation:** Hides complex details, simplifying user interactions.
- **Compliance:** Ensures adherence to best practices.

### Considerations
- **Maintenance:** Requires regular updates and bug fixes.
- **Use Case Coverage:** Should be designed to be flexible and adaptable.
- **Over-Modularization:** Avoid too much fragmentation to maintain readability.

## Module Structure
### Key Files in a Module
- **Inputs (variables.tf):**
  - Defines variables to customize the module.
- **Resources (main.tf):**
  - Declares the resources managed by the module.
- **Outputs (outputs.tf):**
  - Defines output values to pass back to the root configuration.

## Example Folder Structure
- **modules/:** Parent directory for modules.
  - **key_vault/:** Module for managing Key Vault resources.
  - **storage_account/:** Module managing Storage Account resources:
    - **main.tf**
    - **outputs.tf**
    - **variables.tf**

This structure ensures that Terraform projects are scalable, maintainable, and adaptable, facilitating easy management and understanding of infrastructure configurations.
