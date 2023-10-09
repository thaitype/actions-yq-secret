# actions-yq-secret
GitHub Action yq wrapper for hiding secrets

yq is a portable command-line YAML, JSON and XML processor

## Usage 
- Main Repo: https://github.com/mikefarah/yq/
- yq documentation: https://mikefarah.gitbook.io/yq/

```yml
steps:
  - name: Get test
    id: secret
    uses: mildronize/actions-yq-secret@v1
    with:
      cmd: yq '.secret' examples/data.yml
      sensitive: true
  - run: echo "${{ steps.secret.outputs.result  }}"
```

## Todo

- [ ] Create a Pull Request to [mikefarah/yq](https://github.com/mikefarah/yq/)