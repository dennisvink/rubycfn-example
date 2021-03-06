# Infrastructure for example

```
__________ ____ __________________.___._________ _____________________
\______   \    |   \______   \__  |   |\_   ___ \\_   _____/\______   \
 |       _/    |   /|    |  _//   |   |/    \  \/ |    __)   |    |  _/
 |    |   \    |  / |    |   \\____   |\     \____|     \    |    |   \
 |____|_  /______/  |______  // ______| \______  /\___  /    |______  /
        \/                 \/ \/               \/     \/            \/ [0.5.3]
```

## Prerequisites

- Edit .env.private and configure your AWS credentials, or export your AWS credentials.
- Type `rake init` to create the DependencyStack in your AWS account

## Rake commands

`rake` - Retrieve required outputs from DependencyStack, Compile the code into CloudFormation templates and run unit tests
`rake init` - Deploy the DependencyStack in the AWS account
`rake compile` - Compile the code into CloudFormation templates
`rake spec` - Run unit tests
`rake upload` - Upload the CloudFormation templates to s3
`rake update` - Save required outputs from DependencyStack to .env.dependencies.<ENVIRONMENT>
`rake apply` - Deploy the CloudFormation templates

## Stack configuration

The `config.yaml` file in the root directory of this project contains most of the configuration.  It contains the networking configuration for each environment, subnet configuration, DNS and ECS (Docker) containers that are deployed.

## Adding your own resources

The lib/stacks/ directory contains all nested stacks for this project. Every nested stack has a
directory under lib/stacks/. You can add resources to any of these stacks, or create a new stack altogether. See [https://github.com/dennisvink/rubycfn/blob/master/README.md](https://github.com/dennisvink/rubycfn/blob/master/README.md) for documentation.

## About

The code generated by Rubycfn is copyrighted by Dennis Vink (https://drvink.com/),
except for modifications made to the example project after the initial
`git init` command. 

For the generated code permission is hereby granted, free of charge, to any
person obtaining a copy of the generated software and associated documentation
files (the "Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish, distribute,
sublicense, and/or sell copies of the Software, and to permit persons to whom
the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
