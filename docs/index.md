# Working with these docs

## Local Dev

If you are wanting to add to the docs and want to run a server locally, this is setup with docker to make that easy. Just run the following: `make docs_build` and then `make docs_run`. If you want to know what those commands do, just look for those keys in the Makefile.

## Releasing

To release the updated docs to the hosted site just merge a branch to main. This will trigger a github action that will do the deploy.

### Misc

- [mkdocs.yml](https://github.com/CodePlatoonAlumni/docs/blob/main/mkdocs.yml)

- [Docs Folder](https://github.com/CodePlatoonAlumni/docs/blob/main/docs/)

- [Docs auto deploy on master merge](https://github.com/CodePlatoonAlumni/docs/blob/main/.github/workflows/ci.yml)

- [Dockerfile](https://github.com/CodePlatoonAlumni/docs/blob/main/Dockerfile)

- [Makefile](https://github.com/CodePlatoonAlumni/docs/blob/main/Makefile)

- [Source Code](https://github.com/CodePlatoonAlumni/docs)
