# Sequences


```ruby
use_bpm 90
pattern = "9---8---8---8---".ring

live_loop :bar do
  pattern.length.times do
    sample :bd_haus,  amp: (pattern[look].to_f / 9) if (pattern[tick] != "-")
    sleep 8/pattern.length.to_f
  end
end

```
