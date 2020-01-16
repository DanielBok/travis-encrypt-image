Travis Encryption Image
=======================

My custom travis encryption image. 

Run `make` to enter the image and interactively encrypt my secrets.

## Using the image

More instructions can be found in the Travis [documentation](https://docs.travis-ci.com/user/encryption-keys/#usage).

However, for simplicity, here's what you need to do after you're in the image:

1. `travis login --pro`
   1. If you have a github token, you can use it here too. See 
   `travis login --help` for more information
2. `travis encrypt --pro -r <owner/project> SOMEVAR="secretValue"`

You will then get an output string like

```bash
secure: ".... encrypted data ...."
```

which you can paste in your travis.yml file.

Notice we have to use `--pro` throughout since we're using travis-ci.com. 
