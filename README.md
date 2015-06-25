mbentley/ec2tools
=================

Docker image for AWS EC2 Tools

To pull this image:
`docker pull mbentley/ec2tools`

Example usage:

If your environment variables are already exported in your current environment, simple run:
`docker run -it --rm -e REGION -e AWS_ACCESS_KEY -e AWS_SECRET_KEY mbentley/ec2tools`

By default, you will be dropped into a bash shell.
