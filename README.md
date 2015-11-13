# RuboCop Fatsoma

Fatsoma specific code style checking

## Installation

TODO

## Usage

Put this into `.rubocop.yml`.

```
require: rubocop-fatsoma
```

Now you can run `rubocop` and it will automaticly load the RuboCop Fatsoma
cops together with the standard cops.

## The Cops

All cops are located under
[`lib/rubocop/cop/fatsoma`](lib/rubocop/cop/fatsoma), and contain
examples/documentation.

In your `.rubocop.yml`, you may treat the Fatsoma cops just like any other
cop. For example:

```yaml
Fatsoma/FilePath:
  Exclude:
    - spec/my_poorly_named_spec_file.rb
```
