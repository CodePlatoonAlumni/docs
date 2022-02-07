# Release Process

The Alumni app has 3 environments: dev/staging/main. All feature PRs should be opened against dev. When dev is stable, a pr should be opened from dev to staging. Finally, once staging is ready a PR should be opened from staging to main.

Just merging a PR against the above named branches will trigger a FE/BE release. You can view the progress of those events in the Amplify console.

If there is a conflict from dev to staging, follow the steps below. 

1. Create a branch off of dev. e.g. `git checkout -b staging-conflict-fix`
2. Run `git merge staging`
3. Resolve conflicts
4. Open a PR against dev and merge. e.g. dev <- staging-conflict-fix
5. Open a PR from dev to staging: staging <- dev. There should be no more conflicts.
