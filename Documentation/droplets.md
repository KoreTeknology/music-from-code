# Droplets

This page presents a collection of droplets, ready to use in production with its options and details. It is intended to be used for beginners who are looking for pieces of code that can help understanding the concepts and the logic of the software and Ruby code.

### Basic sound play: simple note
```ruby
play 60
```

### Basic sound play: simple note with features
```ruby
play 60, amp: 0.8, rate: 0.5
```

### Basic sound play: simple note with features and random values
```ruby
play 60, amp: rrand(0.5, 1), rate: rrand(0.4, 2)
```

### Basis sound play: simple note with optional values
```ruby
play 60, amp: (0.5, 1).choose, rate:(0.4, 2).choose
```
