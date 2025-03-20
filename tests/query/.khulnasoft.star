load("../../lib.star", "execute")


def main(ctx):
    response = execute(
        """
        query($platform: String!, $owner: String!, $name: String!) {
          ownerRepository(platform: $platform, owner: $owner, name: $name) {
            id
          }
        }""",
        variables={"platform": "github", "owner": "khulnasoft", "name": "khulnasoft-cli"}
    )

    print(response)

    return []
