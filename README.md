# Count lines of code

Counts lines of code across a single GitHub organisation.


## Prerequisite

- [cloc](https://github.com/AlDanial/cloc) is available on the path

## Usage

1. Configure `GIT_URL` in `clone_or_pull.sh` with correct git base url.
2. Create list of repository names and store in file, e.g. `repos.txt`. See [example/repolist.txt](example/repolist.txt)
3. Run `./clone_repos < <file with list>`, e.g. `./clone_repos < repolist.txt`
4. 
