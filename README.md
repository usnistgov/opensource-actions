# opensource-actions

🚀 **opensource-actions** is a GitHub Actions-powered automation tool designed to populate and refresh open-source metadata for the NIST Open Source Portal. It fetches data from GitHub using GraphQL and programmatically updates Markdown content for repositories, contributors, and languages.

---

## 📌 Purpose

This repository automates the update of several content folders in the NIST Open Source Portal:

- `explore/`: Aggregated data and visualization inputs.
- `catalog/`: Individual repository entries.
- `category/`: Repository classification by topic.
- `repo/`: Detailed repository pages.

It supports a scheduled and reproducible metadata scraping pipeline to keep the portal in sync with actual NIST GitHub contributions.

---

## ⚙️ How It Works

### 1. GitHub Action Workflow

Located in `.github/workflows/main.yml`, this workflow:

- Launches a Docker container.
- Authenticates using a GitHub token.
- Uses the GitHub GraphQL API to collect:
  - Repository metadata
  - Contributor statistics
  - Programming language usage
- Generates content files in Jekyll-compatible Markdown format.

### 2. Docker Action Implementation

The core of the action lives in `_action-update`:

- **`Dockerfile`**: Builds a container that includes:
  - GitHub CLI (`hub`)
  - Bash scripts for orchestration
- **`entrypoint.sh`**: Main logic for:
  - Authenticating via GitHub
  - Fetching and formatting data
  - Creating/updating Markdown files

### 3. Authentication

The GitHub token must be set via secrets:

```yaml
env:
  GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```

## 🧱 Repository Structure
```plaintext
opensource-actions/
├── .github/
│   └── workflows/
│       └── main.yml         # GitHub Actions workflow trigger
│
├── _action-update/
│   ├── Dockerfile           # Docker image definition for scraping
│   ├── entrypoint.sh        # Main logic for metadata processing
│   └── hub-linux-amd64*.tgz # GitHub CLI binary package
│
└── README.md                # Project documentation (this file)
```

## 🔄 Schedule & Automation
The action can be triggered:

On demand: Manual trigger via workflow_dispatch

On schedule: Periodically using cron

Example from main.yml:

```yaml
Copy
Edit
on:
  schedule:
    - cron: '0 0 * * 0' # Every Sunday at midnight
  workflow_dispatch:
```

## 🛠️ Requirements
* A GitHub personal access token (set in repository secrets as GITHUB_TOKEN)
* Write access to the content folders in the portal repository (if deployed remotely)
* Docker installed (for local testing, if needed)

## 📈 Outputs
After execution, the following folders in the target repository are updated:
* explore/
* catalog/
* category/
* repo/
These folders contain structured Markdown files used by the NIST Open Source Portal to display:
* Repositories
* Technologies
* Contributor data
* Filterable categories

## 🧪 Local Testing (Optional)
To run the action container locally for testing:
```bash
cd _action-update
docker build -t opensource-actions .
docker run --rm -e GITHUB_TOKEN=your_token opensource-actions
```

## 📝 License
This repository is distributed under the CC0 1.0 Universal License. Feel free to reuse, modify, and distribute as needed.

[![Scheduled Date Update][workflow img]][workflow url]
[![Trigger][schedule img]][schedule url]
[![Last Update][timestamp img]][timestamp url]
[![Pages Deployment][deployment img]][deployment url]

<!-- Scheduled Data Update -->
[workflow img]: https://img.shields.io/github/workflow/status/usnistgov/opensource-actions/Scheduled%20Data%20Update/master?label=Scheduled%20Data%20Update&logo=github-actions&logoColor=white&style=flat
[workflow url]: https://github.com/usnistgov/opensource-actions/actions?query=workflow%3A%22Scheduled+Data+Update%22 "usnistgov/opensource-actions/actions > Scheduled Data Update"
<!-- Trigger -->
[schedule img]: https://img.shields.io/badge/Trigger-daily%20%40%2008%3A05%20UTC-informational?style=flat
[schedule url]: https://github.com/usnistgov/opensource-actions/blob/master/.github/workflows/main.yml "usnistgov/opensource-actions/.github/workflows/main.yml"
<!-- Last Update -->
[timestamp img]: https://img.shields.io/badge/dynamic/json?color=informational&label=Last%20Update&query=%24%5B0%5D.commit.author.date&url=https%3A%2F%2Fapi.github.com%2Frepos%2Fusnistgov%2Fopensource%2Fcommits%3Fpath%3D_explore%2FLAST_MASTER_UPDATE.txt%26per_page%3D1&style=flat
[timestamp url]: https://github.com/usnistgov/opensource/blob/master/_explore/LAST_MASTER_UPDATE.txt "usnistgov/opensource/.../LAST_MASTER_UPDATE.txt"
<!-- Pages Deployment -->
[deployment img]: https://img.shields.io/github/deployments/usnistgov/opensource/github-pages?label=Pages%20Deployment&logo=github&logoColor=white&style=flat
[deployment url]: https://github.com/usnistgov/opensource/deployments/activity_log?environment=github-pages "usnistgov/opensource/deployments/activity_log > GitHub Pages"
