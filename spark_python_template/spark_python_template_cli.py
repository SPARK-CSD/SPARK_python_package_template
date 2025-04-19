import argparse
import os
from pathlib import Path

from ._version import get_versions


# define parser to collect required inputs
def get_parser():

    # get version
    __version__ = get_versions()['version']

    # define parser description
    parser = argparse.ArgumentParser(
        description='Add description of package here.')

    # add parser argument for version
    parser.add_argument(
        '-v', '--version',
        action='version',
        version='spark_python_template version {}'.format(__version__)
    )

    # return parser
    return parser


# define the CLI
def run_spark_python_template():

    # get arguments from parser
    args = get_parser().parse_args()

    # special variable set in the container
    if os.getenv('IS_DOCKER'):
        exec_env = 'singularity'
        cgroup = Path('/proc/1/cgroup')
        if cgroup.exists() and 'docker' in cgroup.read_text():
            exec_env = 'docker'
    else:
        exec_env = 'local'


# run the CLI
if __name__ == "__main__":

    run_spark_python_template()
