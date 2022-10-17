locals {
  # Constants

  spec = yamldecode(file(var.spec_file_path))
}
