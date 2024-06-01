# Automate GitHub Repository Access Management with Bash Scripting and GitHub API Integration

## Introduction
Managing access control for GitHub repositories can become cumbersome, especially when dealing with multiple collaborators. This project aims to simplify the process by using a Bash script integrated with the GitHub API to list all users with access to a specified repository.

## Objectives
- Automate Access Management
- Integrate GitHub API
- Develop a Secure Script

## Prerequisites
- Basic Knowledge of Bash Scripting
- GitHub Account
- GitHub Personal Access Token

## Step-by-Step Guide
1. **Set Up the Environment**: Set up an EC2 instance with Ubuntu, install `jq` for JSON parsing.
2. **Create a Personal Access Token**: Generate a token with the appropriate scopes from GitHub settings.
3. **Write the Bash Script**: Create a script to fetch and list collaborators of a repository.
4. **Run the Script**: Make the script executable and run it with the repository owner and name as arguments.

Follow this blog for proper explanation and execution: https://nishankkoul.hashnode.dev/automating-github-repository-access-with-bash-and-api-integration

## Security Considerations
Ensure you do not expose your GitHub personal access token. Use environment variables or secure storage methods to manage sensitive information.

## Conclusion
This project demonstrates how to automate GitHub repository access management using a Bash script and the GitHub API, enhancing workflow and security.

For more details, refer to the [GitHub API documentation](https://docs.github.com/en/rest).
