## Tfvars-concat GitHub Action
Concatenate all your tfvars files in a directory and create a new file with the result.
This action is useful when you have multiple tfvars for the same environnement.

```yaml
    - name: "Terraform tfvars files concatenation"
        uses: JulienQNN/tfvars-concat@v1.0
        with:
          tfvars-files-suffix: prod
          working-directory: variables
          output-file-name: prod.tfvars
          blank-line: true # Optional
          print-result: true # Optional
```

| Parameter           | Description                               | Type    | Required |
| ------------------- | ----------------------------------------- | ------- | -------- |
| tfvars-files-suffix | Content Cell                              | string  | yes      |
| working-directory   | Directory where your tfvars are located   | string  | yes      |
| output-file-name    | Name of the output file generated         | string  | yes      |
| blank-line          | Add blank line between each concatenation | boolean | no       |
| print-result        | Print the result generated                | boolean | no       |