# Alumni

[![Website](https://img.shields.io/website?label=PRODUCTION&style=for-the-badge&url=https://main.dvs6rmc805qp3.amplifyapp.com/)](https://main.dvs6rmc805qp3.amplifyapp.com/)

[![Website](https://img.shields.io/website?label=STAGING&style=for-the-badge&url=https://staging.dvs6rmc805qp3.amplifyapp.com/)](https://staging.dvs6rmc805qp3.amplifyapp.com/)

[![Website](https://img.shields.io/website?label=DEV&style=for-the-badge&url=https://dev.dvs6rmc805qp3.amplifyapp.com/)](https://dev.dvs6rmc805qp3.amplifyapp.com/)

You can find the project source code [here](https://github.com/CodePlatoonAlumni/alumni-app-fe)

## Project Structure

```tree
../alumni-app-fe
├── README.md
├── amplify
│   ├── backend
│   │   ├── auth
│   │   │   ├── alumniapp
│   │   │   │   ├── alumniapp-cloudformation-template.yml
│   │   │   │   └── parameters.json
│   │   │   └── userPoolGroups
│   │   │       ├── parameters.json
│   │   │       ├── template.json
│   │   │       └── user-pool-group-precedence.json
│   │   ├── backend-config.json
│   │   └── tags.json
│   ├── cli.json
│   └── team-provider-info.json
├── package-lock.json
├── package.json
├── public
│   ├── favicon.ico
│   ├── index.html
│   ├── logo192.png
│   ├── logo512.png
│   ├── manifest.json
│   └── robots.txt
└── src
    ├── App.css
    ├── App.js
    ├── App.test.js
    ├── index.css
    ├── index.js
    ├── reportWebVitals.js
    └── setupTests.js

7 directories, 25 files
```

## Release Process

The Alumni app has 3 environments: dev/staging/main. All feature PRs should be opened against dev. When dev is stable, a pr should be opened from dev to staging. Finally, once staging is ready a PR should be opened from staging to main.

If there is a conflict from dev to staging, follow the steps below. 

1. Create a branch off of dev. e.g. `git checkout -b staging-conflict-fix`
2. Run `git merge staging`
3. Resolve conflicts
4. Open a PR against dev and merge. e.g. dev <- staging-conflict-fix
5. Open a PR from dev to staging: staging <- dev. There should be no more conflicts.

Just merging a PR against the above named branches will trigger a FE/BE release. You can view the progress of those events in the Amplify console.
