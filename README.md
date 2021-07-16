# Anagram, Antigram, and the Computer Program!

## [https://github.com/dqveha/anagram-antigram-the-comp-program/](https://github.com/dqveha/anagram-antigram-the-comp-program/)

#### By Dave Lindqvist

## Description

This is the seventh independent project (Ruby, Week 1) assigned by Epicodus to assess my proficiency with Ruby as well as completing specs. The purpose of this project was to create an algorithm that evaluates if two words/phrases are anagrams or antigrams with each other. Per Oxford Languages, an anagram is "a word, phrase, or name formed by rearranging the letters of another, such as cinema, formed from iceman." Antigrams, in this case, are considered to be words that do not have the same letters with each other such as "hi" and "bye".

Additional features from author:

- If two phrases aren't anagrams, then there is a return of how many letters are actual matches
- `script.rb` can be ran within the terminal per step (5) under 'Installation Instructions'

For spec record, please look under `./spec/ana_anti_gram_spec.rb` and follow step (4) under 'Installation Instructions'

## Technologies Used

1. Docker Hub
2. Ruby

## Installation Instructions

1. Open your terminal
2. Clone this repo to your desktop:

```
https://github.com/dqveha/anagram-antigram-the-comp-program.git
```

3. Open the `anagram-antigram-the-comp-program` directory using Visual Studio Code
4. To run program through RSpec within Docker, type down each line in your terminal and press enter:

```
docker-compose down
docker-compose up --build
docker-compose run --rm app
```

5. To run the interactive script, type in your terminal:

```
docker-compose run --rm app ruby lib/script.rb
```

## Known Issues:

1. Please open a pull request if you have any issues!

---

### License is GPLv3 and I make no claim to copyright.
