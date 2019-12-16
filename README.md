# LLNL Software Portal - Automatic Updates

This repository runs regular data updates for the [LLNL Software Portal](https://software.llnl.gov/).

These updates utilize scripts from the [LLNL/llnl.github.io](https://github.com/LLNL/llnl.github.io) repository.
The new data is pushed back to the same repository.

[![Current Schedule][schedule img]][schedule url]
[![Last Update][timestamp img]][timestamp url]
[![Data Files][datafiles img]][datafiles url]

[schedule img]: https://img.shields.io/badge/schedule-daily%20%40%2008%3A05%20UTC-informational?style=for-the-badge
[schedule url]: https://github.com/lc-bot/llnl.github.io-actions/blob/master/.github/workflows/main.yml "lc-bot/llnl.github.io-actions/.github/workflows/main.yml"

[timestamp img]: https://img.shields.io/badge/dynamic/json?color=informational&label=last%20update&query=%24%5B0%5D.commit.author.date&url=https%3A%2F%2Fapi.github.com%2Frepos%2FLLNL%2Fllnl.github.io%2Fcommits%3Fpath%3D_explore%2FLAST_MASTER_UPDATE.txt%26per_page%3D1&style=for-the-badge
[timestamp url]: https://github.com/LLNL/llnl.github.io/blob/master/_explore/LAST_MASTER_UPDATE.txt "LLNL/llnl.github.io/.../LAST_MASTER_UPDATE.txt"

[datafiles img]: https://img.shields.io/badge/data-json%20files-informational?style=for-the-badge
[datafiles url]: https://github.com/LLNL/llnl.github.io/tree/master/explore/github-data "LLNL/llnl.github.io/.../github-data"
