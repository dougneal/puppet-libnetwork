## Git workflow ##

- Pull requests must contain a succint, clear summary of what the user
  need is driving this feature change
- Follow our
  [Git styleguide](https://github.com/alphagov/styleguides/blob/master/git.md)
- Make a feature branch
- Ensure your branch contains logical atomic commits before sending a
  pull request - follow our
  [Git styleguide](https://github.com/alphagov/styleguides/blob/master/git.md)
- Pull requests are automatically integration tested, where applicable
  using [Travis CI](https://travis-ci.org/), which will report back on
  whether the tests still pass on your branch
- You *may* rebase your branch after feedback if it's to include
  relevant updates from the master branch. We prefer a rebase here to
  a merge commit as we prefer a clean and straight history on master
  with discrete merge commits for features

## Code ##

- Must be readable with meaningful naming, eg no short hand single
  character variable names

## Testing ##

Write unit tests using [rspec-puppet][] and acceptance tests using [beaker][].

[rspec-puppet]: http://rspec-puppet.com/
[beaker]: https://github.com/puppetlabs/beaker

Ensure that you run tests to make sure that they pass
before you raise your pull request.