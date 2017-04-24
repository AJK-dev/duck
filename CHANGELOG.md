# Change Log
All notable changes to this project will be documented in this file.
This project adheres to [Semantic Versioning](http://semver.org/).
Formatted as described on http://keepachangelog.com/.

## [Unreleased]

### Added

- Removed Minotauro and added GTI (SLURM) job generation
- Parallel usage multiple gpus (currently ugly hardcoding)

### Changed

- Removed windows line endings
- Moved from multiple small jobs to single job per ligand complex

### Fixed

- Amber 2016 compliance - default timelimit now 999999 instead of 999999. 
