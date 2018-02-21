# Algo comparison for mobile app name

```ruby
$ ruby compare_string.rb

+---------------------+------------------+--------+-------------+---------+--------------+
| Word A              | Word B           | Cosine | Levenshtein | Trigram | Jaro-Winkler |
+---------------------+------------------+--------+-------------+---------+--------------+
| Twitter             | twitter          | 0.925  | 1.0         | 0.667   | 1.0          |
| chien               | niche            | 1.0    | 0.25        | 0.0     | 0.6          |
| twitter v1          | Twitter v2       | 0.866  | 0.5         | 0.6     | 0.96         |
| ShazamIphone        | ShazamAndroid    | 0.667  | 0.167       | 0.235   | 0.866        |
| Famous Instagram SW | Famous Instagram | 0.951  | 0.333       | 0.824   | 0.968        |
| Int Facebook        | CI Facebook      | 0.889  | 0.333       | 0.583   | 0.914        |
| Int Facebook        | Instagram Int    | 0.525  | 0.1         | 0.05    | 0.638        |
+---------------------+------------------+--------+-------------+---------+--------------+
```
