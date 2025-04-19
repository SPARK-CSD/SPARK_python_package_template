.. _usage:

======
Usage
======

The general usage of ``spark_python_template`` is ADD DESCRIPTION HERE.
The exact command to run ``spark_python_template`` depends on the Installation method and user. Regarding the latter, ``spark_python_template`` 
can either be used as a ``command line tool`` or directly within ``python``. Please refer to the `Tutorial <https://spark-csd.github.io/spark_python_template/walkthrough>`_ for a more detailed walkthrough.

Here's a very conceptual example of running ``spark_python_template`` via ``CLI``: ::

    spark_python_template 
    spark_python_template optional_arguments

and here from within ``python``: ::

    from spark_python_template import spark_python_template_function
    from spark_python_template import spark_python_template_function

    result = spark_python_template_function(input)

    result = spark_python_template_function(input, optional_arguments)

Below, we will focus on the ``CLI`` version. Thus, if you are interested in using ``spark_python_template`` directly within ``python``,
please check the `Examples <https://spark-csd.github.io/spark_python_template/auto_examples/index>`_.

Sub-section of Usage focusing on CLI
===========================================

Command-Line Arguments
======================
.. argparse::
  :ref: spark_python_template.spark_python_template_cli.get_parser
  :prog: spark_python_template
  :nodefault:
  :nodefaultconst:

Example Call(s)
---------------

Below you'll find two examples calls that hopefully help
you to familiarize yourself with ``spark_python_template`` and its options.

Example 1
~~~~~~~~~

.. code-block:: bash

    spark_python_template \
    input
    optional_arguments

Here's what's in this call:

- The 1st positional argument is 
- The 2nd positional argument indicates that 


Example 2
~~~~~~~~~

.. code-block:: bash

    spark_python_template \
    input
    optional_arguments
    optional_arguments

Here's what's in this call:

- The 1st positional argument is 
- The 2nd positional argument indicates that 
- The 3rd positional argument indicates that 


Support and communication
=========================

The documentation of this project is found here: https://spark-csd.github.io/spark_python_template.

All bugs, concerns and enhancement requests for this software can be submitted here:
https://github.com/spark-csd/spark_python_template/issues.

If you have a problem or would like to ask a question about how to use ``spark_python_template``,
please submit a question to `NeuroStars.org <http://neurostars.org/tags/spark_python_template>`_ with an ``spark_python_template`` tag.
NeuroStars.org is a platform similar to StackOverflow but dedicated to neuroinformatics.

All previous ``spark_python_template`` questions are available here:
http://neurostars.org/tags/spark_python_template/

Not running on a local machine? - Data transfer
===============================================

Please contact you local system administrator regarding
possible and favourable transfer options (e.g., `rsync <https://rsync.samba.org/>`_
or `FileZilla <https://filezilla-project.org/>`_).

A very comprehensive approach would be `Datalad
<http://www.datalad.org/>`_, which will handle data transfers with the
appropriate settings and commands.
Datalad also performs version control over your data.