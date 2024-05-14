# Copyright 2020 Pants project contributors.
# Licensed under the Apache License, Version 2.0 (see LICENSE).

# This target sets the metadata for all the Python non-test files in this directory.
python_sources(
    name="lib",
)

# This target allows us to bundle our app into a PEX binary file via
#  `pants package`. We can also run it with `pants run`. See
#  https://www.pantsbuild.org/docs/python-package-goal and
#  https://www.pantsbuild.org/docs/python-run-goal.
pex_binary(
    name="pex_binary",
    entry_point="main.py",
    # Got these settings from: https://www.pantsbuild.org/blog/2022/08/02/optimizing-python-docker-deploys-using-pants
    layout="packed",
    execution_mode="venv",
    include_tools=True,
)


docker_image(
    name="img",
    # repository = "app",
    instructions=[
        "FROM python:3.10-slim",
        'ENTRYPOINT ["/usr/local/bin/python3.10", "/bin/app"]',
        "COPY src.python.helloworld/pex_binary.pex /bin/app",
    ],
)

# docker_image(
#     name = "img",
#     repository = "app",
#     instructions = [
#         "FROM python:3.10-slim as deps",
#         "COPY path.to.here/binary.pex /binary.pex",
#         "RUN PEX_TOOLS=1 /usr/local/bin/python3.10 /binary.pex venv --scope=deps --compile /bin/app",

#         "FROM python:3.10-slim as srcs",
#         "COPY path.to.here/binary.pex /binary.pex",
#         "RUN PEX_TOOLS=1 /usr/local/bin/python3.10 /binary.pex venv --scope=srcs --compile /bin/app",

#         "FROM python:3.10-slim",
#         'ENTRYPOINT ["/bin/app/pex"]',
#         "COPY --from=deps /bin/app /bin/app",
#         "COPY --from=srcs /bin/app /bin/app",
#     ]
# )
