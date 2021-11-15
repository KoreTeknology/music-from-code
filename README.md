<h1 align="center">Music from Code (Page in construction!)</h1>
<p align="center">
  <img src="https://img.shields.io/badge/Educational-Programs-orange.svg" /> <img src="https://img.shields.io/badge/License-CC BY NC SA 4.0-green.svg" /> <img src="https://img.shields.io/badge/Code-RUBY-blue.svg" /> <img src="https://img.shields.io/badge/Aktiv-=25=-red.svg" />
</p>

<p align="center">
  <b>My personal archive of codes and educational contents for music production, using <a href="https://github.com/sonic-pi-net/sonic-pi">Sonic Pi</a></b><br/>
  by <u>Uriel Deveaud @2021-Kore Teknology</u> [Quadraphonics]<br/>
  <a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/"><img alt="Licencia de Creative Commons" style="border-width:0" src="https://i.creativecommons.org/l/by-nc/4.0/80x15.png" /></a>
</p>

<img src="https://github.com/KoreTeknology/music-from-code/blob/main/Documentation/images/header_home_git_SPI.jpg" width="100%">

[comment]: <> (This is a comment, it will not be included)
The aim of this project is to learn, experiment and produce music from code. Simple as writing lines of commands and definitions for producing sounds and sequences? How ? **Using the excellent and educational tool [Sonic Pi Software](https://sonic-pi.net/) created by Sam Aaron!** This is a good oportunity to enter the world of live-coding and music production at the same time. Also, this tool was made with "Open Hardware" compatibility in mind, as it is intended to run on Raspberry Pi boards (i didn´t try yet), Windows, Apple and Linux OS.

There are several tools available to create sound using programming, but my attention was catched by the Sonic Pi, very intuitive ground, easy to teach and nice for sharing a lot of fun with friends! So after i started producing music with it, i also started to get a lot of notes about the language, the techniques and api documentation! This is why this page exists.

```diff 
! By Downloading these files packages, you are accepting the terms of the License CC BY NC SA 4.0 !
```

> This repository is intended to be my own ressources and documentation. If you want to read and learn more about the official documentation, you can visit the Sonic Pi Website and its [tutorials](https://sonic-pi.net/tutorial.html). 

---

## DOCUMENTATION & EDUCATIONAL CONTENTS

- [x] [**Notes about Sonic Pi**](Documentation/about.md), codes source and softwares

### Basic knowledge
- [x] [**Understanding Files and audio recording**](Documentation/recording.md), import/export files, sharing formats and recording output
- [x] [**Understanding Notes and partitions**](Documentation/notes.md), keyboards and notation controls
- [x] [**Creating sound from Audio Synthesis**](Documentation/synthesis.md), generators and modifiers
- [x] [**Creating sound from Audio Samples files**](Documentation/samples.md), chopping loop and Live Sampling
- [x] [**Creating Sequences, patterns and Loops**](Documentation/sequences.md), bpm, sync and patterns
- [x] [**Adding Enveloppe, filters and Effects**](Documentation/effects.md) Individuals and Master section

### Advanced music programming
- [x] [**Mathematics and Programming Algotythms**](Documentation/math.md), Use of math principles
- [x] [**Writing Music Patterns and songs**](Documentation/songs.md), keyboards and controls
- [x] [**Mixing sounds and buffers**](Documentation/mix.md), generators and modifiers
- [x] [**Doing Live Coding sessions**](Documentation/live.md), Basics and rules
- [x] [**Building Personal libraries**](Documentation/libraries.md), Samples and code droplets
- [x] [**External Midi Control**](Documentation/midi.md), input control keyboard and output devices

### Hardcore music programming
- [x] [**Setup and practices**](Documentation/practices.md), hardwares on stage
- [x] [**Live coding challenges**](Documentation/challenges.md), most efficient techniques

### References
- [x] [**Sound generators and Envelope**](Documentation/synths_references.md), All generators with its details
- [x] [**Filters and Effects**](Documentation/effects_references.md), All effects that you can apply to sound
- [x] [**Samples Packs**](Documentation/challenges.md), generators and modifiers

* Notes:

---

## CODE PREVIEWS & MUSIC RELEASES

This section presents various personal audio projects, including full songs and experimentations. Most production are electronic music oriented ;) but there is exceptions where my mood was different. i am not closed into a registrered style or genre but i always try to go where the moment is calling me.

- [x] `EP` **GlassTone** | [**Details**](Production/LP_GlassTone.md) | [**Code**](Production/LP_GlassTone.md) | [**Audio**](Production/LP_GlassTone.md) (Genre: EDM, Year: 2020, Artist: Aktiv25, Label: KoreTeknology)
- [x] `EP` **RollStep** | [**Details**](Production/LP_RollStep.md) | [**Code**](Production/LP_RollStep.md) | [**Audio**](Production/LP_RollStep.md) (Genre: EDM, Year: 2021, Artist: Aktiv25, Label: KoreTeknology)
- [x] `EP` **SpiTribe** | [**Details**](Production/LP_SpiTribe.md) | [**Code**](Production/LP_SpiTribe.md) | [**Audio**](Production/LP_SpiTribe.md) (Genre: TRB, Year: 2021, Artist: Aktiv25, Label: KoreTeknology)

```diff 
* All LP/EPs are part of my music production from 2021, LABEL: KTS, AUTHOR: AKTIV.25
```
---

## READY-TO-USE CUSTOM CODE DROPLETS

### Instruments
- [x] `SYNTH` [**PPT 2200**](Documentation/Code%20Droplets/droplet_synth_ppt2200.rb) Extended Prophetized Synth Mod
- [x] `SYNTH` [**RDD 1210**](Documentation/Code%20Droplets/droplet_synth_rdd1210.rb) Experimental Sound Generator 
- [x] `SYNTH` [**XRS 3000**](Documentation/Code%20Droplets/droplet_synth_xrs3000.rb) Extended Sine Synth Mod

### Drums
- [x] `KIST ` [**DRM 5050**](Documentation/Code%20Droplets/droplet_drums_drm5050.rb) Extended Drum Machine Mod
- [x] `SHOT ` [**LOK 8100**](Documentation/Code%20Droplets/droplet_drums_lok8100.rb) Single custom Kick 

### Effects
- [x] `REVB ` [**REV 5040**](Documentation/Code%20Droplets/droplet_fx_rev5040.rb) Reverb Mod
- [x] `DLAY ` [**DLY 8000**](Documentation/Code%20Droplets/droplet_fx_dly8000.rb) Delay Mod
- [x] `REVB ` [**DST 6000**](Documentation/Code%20Droplets/droplet_fx_dst6000.rb) Remote Disto Mod
- [x] `DLAY ` [**DLY 8100**](Documentation/Code%20Droplets/droplet_fx_dly8100.rb) Advanced Delay Mod 

### Audio In
- [x] `MIC  ` [**IN  0100**](Documentation/Code%20Droplets/droplet_in_in0100.rb) Custom Input for Microphone
- [x] `REC  ` [**REC 1000**](Documentation/Code%20Droplets/droplet_in_rec1000.rb) Custom record setup

### Master Out
- [x] `ST  ` [**ST  4000**](Documentation/Code%20Droplets/droplet_out_st4000.rb) Custom Outputs
- [x] `MN  ` [**MN 1000**](Documentation/Code%20Droplets/droplet_out_mn1000.rb) Single Mono Output

```diff 
Notes:
```
---

## CUSTOM SYNTHETIZERS MADE WITH SUPERCOLLIDER

We can create new synth in a shape of synthdefs from supercollider, we will lokk at how to build them and how to use them in sonic Pi.
Here is [**Temporary documentation**](Custom%20Synths/test%20synths/customsynths.md)
```diff 
None at the moment
```
---

## ACKNOWLEDGEMENTS

* This work is dedicated to all Sonic Pi users and Live-Coderz ;) and members of the excellent [**In_threads Forum**](https://in-thread.sonic-pi.net/), a place to meet other international performers.
* **I do  this work during my free time, so please, be patient about the next repository update** :)

## Author

* **Uriel Deveaud** - *Initial work* - [AKTIV25](https://github.com/KoreTeknology) @KoreTeknology(1998) @Quadraphonics(2014)

Please, feel free to contact me, and/or discuss further developments or ideas for those files, thanks ;)<br/>
Collaboration projects are always welcome!</p>

## License

This work is licensed under a [![CC BY-NC-SA 4.0][cc-by-nc-sa-image]][cc-by-nc-sa] uriel Deveaud [Quadraphonics], 2021

[cc-by-nc-sa]: http://creativecommons.org/licenses/by-nc-sa/4.0/
[cc-by-nc-sa-image]: https://licensebuttons.net/l/by-nc-sa/4.0/88x31.png
[cc-by-nc-sa-shield]: https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg

|[Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License][cc-by-nc-sa]|||
| ------------------------------------------------- | --------- | :--------: |
| License and copyright notice | Required  | &#10069; |
| Private Use                  | Permitted | &#10004; |
| Commercial Use               | Forbidden | &#10006; |
| Distribution                 | Permitted | &#10004; |
| Modification                 | Permitted | &#10004; |
| Hold Liable                  | Forbidden | &#10006; |

## :sparkling_heart: Support the project

I open-source almost everything I can, and I try to reply to everyone needing help using these projects. Obviously, this takes time. You can use this service for free.
However, if you are using this project and are happy with it or just want to encourage me to continue creating stuff, there are few ways you can do it :-

- Giving proper credit when you use github-readme-stats on your readme, linking back to it :D
- Starring and sharing the project :rocket:

Thanks! :heart:

---
