< [Back to Homepage](../../..)

# Notes


### Writing Notes

Writing notation in **Sonic Pi** is very easy. We can choose between 2 types, a #number (60) or a real music partition system (e.g. D3). Both works fine and depend on your music education, you may choose the most convenient for your creation.

### Sliding Notes

Independently, we can set a slide betwen notes, this makes sens at the time you are writing your code to "link" notes into your partition or sequence.

``` ruby
s = play 60, release: 8, note_slide: 1
sleep 0.5
control s, note: 65
sleep 0.5
control s, note: 67
sleep 3
control s, note: 72
sleep 1
control s, note: 80
```

< [Back to Homepage](../../..)
