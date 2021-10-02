# GraphQL Transform
Amplify CLI generates resolvers for queries, mutations, and subscriptions as well as DynamoDB tables for models defined in `schema.graphql`.

Helpful links:

- [Apmlify GraphQL CLI Docs](https://docs.amplify.aws/cli/graphql-transformer/overview/)
- [Amplify GraphQL Library Docs](https://docs.amplify.aws/lib/graphqlapi/getting-started/q/platform/js/)

## Model
Models are defined in `schema.graphql`.

### Index
With `@key` directive, we can create custom indexes and additional data access patterns.
This allows us to efficiently query data as DynamoDB is a key-value and document database (NoSQL).
[Learn more](https://docs.amplify.aws/cli/graphql-transformer/key/)

#### Sparse Index
We utilize [sparse index](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/bp-indexes-general-sparse-indexes.html) approach with some of our indexes.

Sparse indexes let us query faster and less expensive than to scan the entire table.

To make this happen, we only assign values to the key if the condition is met. For example, we have the following index.

```@key(fields: ["publicProfile", "firstName"], name: "publicAlumniProfiles", queryField: "publicAlumniProfiles")```

Only public profiles should have `publicProfile` attributes. If the profile is changed to non-public, we delete the attribute, so if you try to access `publicProfile` on non-public profiles, you will get `null`.

Sparse index is one of the best practices when working with DynamoDB. [Learn More Best Practices for DynamoDB](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/best-practices.html)

## How to query data
Amplify generates queries, mutations, and subscriptions files in `src/graphql/`. We can use these to query and mutate data from frontend.

You can find examples on how to use them throughout our code as well as in the [official docs](https://docs.amplify.aws/lib/graphqlapi/mutate-data/q/platform/js/).

The generated files get overwritten, so we have `src/graphql/custom` folder where we have custom queries. These are used in cases where we only need specific attributes returned or set query criteria directly instead of passing in as an argument to make them consice.
