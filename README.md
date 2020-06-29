# LLNL Software Portal - Automatic Updates

This repository runs regular data updates for the [LLNL Software Portal](https://software.llnl.gov/).

These updates utilize scripts from the [LLNL/llnl.github.io](https://github.com/LLNL/llnl.github.io) repository.
The new data is pushed back to the same repository.

[![Scheduled Data Update][workflow img]][workflow url]
[![Current Schedule][schedule img]][schedule url]
[![Last Update][timestamp img]][timestamp url]

[workflow img]: https://github.com/lc-bot/llnl.github.io-actions/workflows/Scheduled%20Data%20Update/badge.svg
[workflow url]: https://github.com/lc-bot/llnl.github.io-actions/actions?query=workflow%3A%22Scheduled+Data+Update%22 "lc-bot/llnl.github.io-actions/actions > Scheduled Data Update"
[schedule img]: https://img.shields.io/badge/Trigger-Daily%20%40%2008%3A05%20UTC-informational?labelColor=2e3339&style=flat
[schedule url]: https://github.com/lc-bot/llnl.github.io-actions/blob/master/.github/workflows/main.yml "lc-bot/llnl.github.io-actions/.github/workflows/main.yml"
[timestamp img]: https://img.shields.io/badge/dynamic/json?color=informational&label=Last%20Update&query=%24%5B0%5D.commit.author.date&url=https%3A%2F%2Fapi.github.com%2Frepos%2FLLNL%2Fllnl.github.io%2Fcommits%3Fpath%3D_explore%2FLAST_MASTER_UPDATE.txt%26per_page%3D1&labelColor=2e3339&style=flat
[timestamp url]: https://github.com/LLNL/llnl.github.io/blob/master/_explore/LAST_MASTER_UPDATE.txt "LLNL/llnl.github.io/.../LAST_MASTER_UPDATE.txt"
