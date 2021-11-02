# Audio Synthesis

Sonic Pi offers a large palette of included synthdef base models. Those include generators of various types (sin, square, tri, etc...) available for our creation. We are looking at building-elements or blocks.

The most basic generator, by default, doesn´t have a name by itself and it can be called the simplest way

```ruby
play 60
```
For more advanced synth sounds, we must call a ready-made synth before playing notes:
```ruby
use_synth :sine
play 60
```
