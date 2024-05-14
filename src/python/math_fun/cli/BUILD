python_sources()

# Define a self-contained, relocatable binary that contains a complete Python environment
# (i.e., code and dependencies but not the interpreter itself). See https://pex.readthedocs.io


pex_binary(
    name="pex_binary",
    entry_point="math_fun.cli.main:main",
    # By specifying a custom `platforms` list, we could build this binary for Mac and Linux so it can be used
    # anywhere.
    # However, when I tried this, I got a hang: Building 2 requirements for src.python.math_fun.cli/pex_binary.pex from the python-default.lock resolve: click==8.1.7, numpy==1.26.4
    # platforms=[
    #     "current"
    #     # If we kept this, we'd create a binary for Mac as well
    #     #"macosx-10.9-x86_64-cp-310-cp310",
    # ],
)
