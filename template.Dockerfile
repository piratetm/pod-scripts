# SPDX-License-Identifier: BSD-3-Clause
# (c) 2021, Konstantin Demin

FROM docker.io/rockdrilla/debian-minbase-unstable

# please issue 'sh /.cleanup.sh' as last RUN command in your images

# remove next line if package management is not required
RUN aptitude update

# further configuration

# must be latest RUN statement
RUN sh /.cleanup.sh
