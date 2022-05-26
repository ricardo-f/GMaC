# Contribuiting Guide:

> Thank you for investing your time in contributing to our project! In this guide you will get an overview of the contribution workflow from creating a PR, reviewing, and merging the PR.

_Plagiarized from Github..._

---

## How to help, improve or test it

- create a new branch
- **Don't skip the CI**
- **Always** follow the actions execution to be sure that everything went fine
- Open a PR to the main branch. _**Direct commits to main are not allowed.**_

### The development flow:

It looks like TBD (Trunk Based Development).
- Any branch will pre-test and validate the code.
- pull request will only show what will be changed.
- merge to the main branch will deploy/change the resources at Terraform.
- The rollback plan would be to revert the PR.

### The test phase

All tests are in the CI file they are:
- Terraform plan and checks
    - Terraform validate, to ensure that the terraform files are valid.
    - Terraform plan, so you can see what is planed for that exact moment.
- TFLint
    - Warn about deprecated syntax, unused declarations and enforce best practices.
- Checkov
    - Security test, do a static analysis of the terraform code.

### The deployment phase

The deployment phase is in CD file and follow this steps:
- Terraform fmt apply:
    - Format the terraform code
    - Commit and push any changes as github action bot to the opened PR
- Terraform docs generation:
    - Generate the docs from terraform file
    - Commit and push any changes as github action bot to the opened PR
- Terraform deployment:
    - Generate a plan and add a comment in the opened PR
    - Apply the last plan that was show in the PR
