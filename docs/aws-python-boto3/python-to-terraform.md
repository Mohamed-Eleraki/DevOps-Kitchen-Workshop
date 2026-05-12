# AWS Boto3 - Python to Terraform

## _#week_twenty - Boto3 SDK_
<br>

**_duration: 1 week_**<br><br>

ForgTech company wanna test your ability to deliver their requirements utilizing AWS Python SDK libraries, This will help you build
a good reputation.

The purpose of this task is to build a CLI tool using Python/Boto3 calls to create Terraform code for AWS
resources.

The FrogTech Cloud Team requests you to implement local Python scripts with AWS Boto3 SDK that meet the following
requirements:

1. List the `us-east-1` region VPCs.
2. Create a Terraform file that contains the required details to create the fetchd VPCs.
3. Consider using function-based:

   a. List functions under the `utils` directory.

      ```text
      1 utils
      2 |__ function.py
      3 |__ function2.py
      4 main.py
      ```

   b. A function does one thing only.

   c. List related functions in the same file.

4. Consider using the main file to call all the functions and handle their dependencies.
5. Consider docstring and type hint.
6. Consider following the Python PEP code standardization (i.e. by installing vscode extensions like pylint, Black)

As well as build a Readme file explaining what your tool is doing and how to use it.

**Bouns**

1. Read about [MkDocs](https://realpython.com/python-project-documentation-with-mkdocs/).
<br>

## References:

- [Boto3 Docs](https://docs.aws.amazon.com/boto3/latest/)
- [PEP 257 – Docstring Conventions](https://peps.python.org/pep-0257/)
- [Google Python Style Guide – Comments and Docstrings](https://google.github.io/styleguide/pyguide.html#38-comments-and-docstrings)
- [Use Type Hints to Provide Automatic Type Information](https://realpython.com/python-project-documentation-with-mkdocs/#use-type-hints-to-provide-automatic-type-information)
