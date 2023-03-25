#!/usr/bin/env bash
#
apt install -y ruby ruby-augeas ruby-shadow puppet &&
	gem install puppet-lint \
  puppet-lint-strict_indent-check \
  puppet-lint-manifest_whitespace-check \
  puppet-lint-unquoted_string-check \
  puppet-lint-leading_zero-check \
  puppet-lint-absolute_classname-check \
  puppet-lint-trailing_comma-check \
  puppet-lint-file_ensure-check \
  puppet-lint-legacy_facts-check && echo "You Can Only Have A Single Version of Puppet-lint! choose the version to Uninstall ? " && gem uninstall puppet-lint

