# Working with Amplify

Create the below two files to store your credentials and config

---

1.`~/.aws/credentials` (just replace the example keys with your keys)

```bash
[default]
aws_access_key_id=SOMEKEY
aws_secret_access_key=SOMESECRET
```

2.`~/.aws/config`

```bash
[default]
region=us-east-2
output=json
```

You can learn more about AWS profile [here](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-profiles.html)

## Set up amplify CLI

Run `npm install -g @aws-amplify/cli` to install amplify CLI

Go to the amplify console, find the env and run the specified command

### Amplify CLI Commands

Some amplify commands operate like git commands. Below commands are useful whether you work on backend or not.

---

`amplify status` is like *git status* and displays the changes between your local backend environment and upstream environment. It also tells you which environment you are currently on.

`amplify pull` is like *git pull* and fetches upstream backend environment definition changes from the cloud and updates the local environment to match that definition.

`amplify push` pretty much the opposite of the above.

View more [here](https://docs.amplify.aws/cli/start/workflows#common-cli-commands)

---

`amplify environment add <env_name>` this will add a new backend environment. If you are wanting to do backend changes and don't want to mess up the dev environment, you can use this to create your own personal sandbox. You would then checkout that env.

`amplify env checkout <env_name>` see above. Will checkout to a new backend_env

View more [here](https://docs.amplify.aws/cli/teams/overview/)

---
