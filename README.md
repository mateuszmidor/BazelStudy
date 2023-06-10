# BazelStudy

For studying Bazel build tool.  

## bazel-study

Start learning bazel commands here.


## bazel-mystery (below alias bq="bazel query")

Learn how to query bazel targets and their dependencies.

* bazel build //crime_scene_reports:missing_basil_089324 - get the story text (amy and mark have been interviewed)
* bazel test solution --test_env guess=John - check the solution to be John (wrong)
* bq //... - list all targets in the workspace
* bq "deps(//people:amy)" - who amy depens on (nothing)
* bq "deps(//people:mark)" - who mark depens on (nothing)
* bq "rdeps(//..., (people:amy union people:mark))" - who depends on amy or mark (//interviews:454235, //interviews:565673)
* bazel run //interviews:454235 - see interview text (someone with basil got into RED car)
* bazel run //interviews:565673 - see interview text (I saw a TALL person running quickly to their car with some basil.)
* bq "attr(tags, red, //cars/...)" - list cars tagged as "red" (//cars:23245, //cars:85465)
* bq "attr(tags, tall, people/...)"  - list tall people (//people:basil)
* bq "deps(people:basil)" - see basil's car (//cars:23245 - the red one!)
* bazel test solution --test_env guess=basil - check the solution to be basil (correct!)

Targets (from bq //... ):
* //cars:23245
* //cars:74383
* //cars:85465
* //crime_scene_reports:car_accident_275573
* //crime_scene_reports:eaten_sandwich_738682
* //crime_scene_reports:lost_dog_847941
* //crime_scene_reports:missing_basil_089324
* //interviews:454235
* //interviews:565673
* //people:amy
* //people:basil
* //people:james
* //people:john
* //people:katie
* //people:mark
* //people:michelle
* //people:olivia
* //people:robert
* //solution:solution