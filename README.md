<!-- VERSION: TheKing6488-README-TEMPLATE V1 -->

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]

<!-- TODO Change the links -->
<!-- TODO Remove if you do not have a pipeline -->
[![HugoBuildAndDeploy](https://img.shields.io/github/workflow/status/TheKing6488/Global-Pipelines/PipelineName?style=for-the-badge)](https://github.com/TheKing6488/Global-Pipelines/actions/workflows/PipelineName.yaml)

<!-- PROJECT LOGO -->
<!-- TODO Change the Link -->
<!-- TODO Change the image -->
<br />
<div align="center">
  <a href="https://github.com/theking6488/Global-Pipelines">
    <img src="">
  </a>

<!-- TODO Change the project name -->
### Global-Pipelines

<!-- TODO Change the description -->
<!-- In this repository I have created a README-Template based on Best-README-Template -->

<p align="center">

<br />

<!-- TODO Change the Link for Project, Bug and Feature -->
<a href="https://github.com/TheKing6488/Global-Pipelines"><strong>Explore the Project »</strong></a>
<br />
<br />
<a href="https://github.com/TheKing6488/Global-Pipelines/issues">Report Bug</a>
·
<a href="https://github.com/TheKing6488/Global-Pipelines/issues">Request Feature</a>
  </p>
</div>

<!-- ABOUT THE PROJECT -->
## About The Project 🗺️

This CI/CD pipeline automatically detects Dockerfiles and builds Docker containers, triggers a Coolify deployment, creates a Git tag, and generates a GitHub release. It also supports mirroring to other repositories, streamlining the deployment process and ensuring consistent versioning.

### Usage

### Secrets for the CI/CD Pipeline

| Name                | Description                          | Type | Example | Required |
|---------------------|--------------------------------------|-------------|--------------|--------------|
| `GH_PAT`    | GitHub Personal Access Token is an access token for authentication and automation in GitHub Actions, e.g. for releases and Docker uploads | string | ghp_abcdefghijklmnopqrstuvwxyz1234567890 | ✅ |
| `DOCKERHUB_USERNAME`    | GitHub Personal Access Token is an access token for authentication and automation in GitHub Actions, e.g. for releases and Docker uploads | string | ghp_abcdefghijklmnopqrstuvwxyz1234567890 | ❌ |
| `DOCKERHUB_TOKEN`    | GitHub Personal Access Token is an access token for authentication and automation in GitHub Actions, e.g. for releases and Docker uploads | string | ghp_abcdefghijklmnopqrstuvwxyz1234567890 | ❌ |
| `GITLAB_USERNAME`    | GitHub Personal Access Token is an access token for authentication and automation in GitHub Actions, e.g. for releases and Docker uploads | string | ghp_abcdefghijklmnopqrstuvwxyz1234567890 | ❌ |
| `GITLAB_TOKEN`    | GitHub Personal Access Token is an access token for authentication and automation in GitHub Actions, e.g. for releases and Docker uploads | string | ghp_abcdefghijklmnopqrstuvwxyz1234567890 | ❌ |
| `PROD_COOLIFY_WEBHOOK`    | Webhook URL used to trigger a deployment in the production environment | string | https://coolify.example.com/api/v1/deploy?uuid=<your-uuid>&force=false | ❌ |
| `DEV_COOLIFY_WEBHOOK`    | Webhook URL used for sending notifications in the development environment | string  | https://coolify.example.com/api/v1/deploy?uuid=<your-uuid>&force=false | ❌ |
| `COOLIFY_TOKEN`    | Authentication token used for accessing the Coolify API or webhook integration |  string |          | ❌ |
| `SSH_PRIVATE_KEY`    | ssh key for the remote repository to be mirrored to | string | ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIG6Dh5NcyvT6h4NhmKKxEk3wYbvqMZ46e0l9TXZ4hwF user@example.com | ❌ |


<br>

## Build With 🏗️

<!-- TODO Go to https://github.com/Ileriayo/markdown-badges and search for a fitting batch🙃 -->

![Markdown](https://img.shields.io/badge/markdown-%23000000.svg?style=for-the-badge&logo=markdown&logoColor=white)   
![GitHub](https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white)    
![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)    

<br>

<!-- CONTRIBUTING -->
## Contributing ✨

<!-- TODO Customize the contributing text -->
If you have any ideas or want to contribute yourself... go for it. I really appreciate it if some of you have cool ideas🚀

<br>

<!-- LICENSE -->
<!-- TODO Add the License description -->
## License 📝

The code is distributed under the MIT License. See `LICENSE` for more information.

<br>

<!-- ACKNOWLEDGMENTS -->
<!-- TODO Add your acknowledgments -->
<!-- ## Acknowledgments 🙏 -->


<!-- MARKDOWN LINKS & IMAGES -->
<!-- TODO Update your user name -->
<!-- TODO Update your project name -->
[contributors-shield]: https://img.shields.io/github/contributors/TheKing6488/Global-Pipelines.svg?style=for-the-badge
[contributors-url]: https://github.com/TheKing6488/Global-Pipelines/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/TheKing6488/Global-Pipelines.svg?style=for-the-badge
[forks-url]: https://github.com/TheKing6488/Global-Pipelines/network/members
[stars-shield]: https://img.shields.io/github/stars/TheKing6488/Global-Pipelines.svg?style=for-the-badge
[stars-url]: https://github.com/TheKing6488/Global-Pipelines/stargazers
[issues-shield]: https://img.shields.io/github/issues/TheKing6488/Global-Pipelines.svg?style=for-the-badge
[issues-url]: https://github.com/TheKing6488/Global-Pipelines/issues
[license-shield]: https://img.shields.io/github/license/TheKing6488/Global-Pipelines.svg?style=for-the-badge
[license-url]: https://github.com/TheKing6488/Global-Pipelines/blob/master/LICENSE
