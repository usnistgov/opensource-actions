# NIST Software Portal - Automatic Updates

This repository runs regular data updates for the [NIST Software Portal](https://usnistgov.github.io/opensource/).

These updates utilize scripts from the [usnistgov/opensource](https://github.com/usnistgov/opensource) repository.
The new data is pushed back to the same repository.

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
