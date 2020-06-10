# Count lines of code

Counts lines of code across a single GitHub organisation.


## Prerequisite

- [cloc](https://github.com/AlDanial/cloc) is available on the path

## Usage

### 1. Create list of repos
Store list of repositories in a file. See [example/repolist.txt](example/repolist.txt) for an example.

### 2. Configure base Git URL 
Open `clone_or_pull.sh` and configure `GIT_URL` with correct git base url.

### 3. Clone Git repositories
Run `clone_repos.sh < repolist.txt`

The cloned repositories are stored in a directory called `repos`. You can configure by changing `$TEMP_GIT_REPOS_DIR` in `clone_repos.sh`.

### 4. Generate cloc reports

Run `cloc_repos.sh < repolist.txt`

The reports are stored in `reports` directory.

### 5. Combine reports
Run `combine_reports.sh`

The report combination produces two output files, one for sums by programming language (sumofrepos.lang) and one by project (sumofrepos.file).
