# General/random
alias please="sudo"

# Composer
alias composerin="composer install --prefer-source"
alias composerup="composer update --prefer-source"
    
# Gulp
alias compileassets="./node_modules/.bin/gulp"
alias watchassets="./node_modules/.bin/gulp watch"

# Git
alias changes="git status"
alias pull="git pull"
alias push="git push"
alias addall="git add ."


# Git
function stash
	if count $argv > 0
		git stash save $argv[1]
	end
end

function branch
    if count $argv > 0
        git checkout $argv
    end
end

function branchout
	if count $argv > 0
		git checkout -b $argv[1]	
	end
end

function add
	if count $argv > 0
		git add $argv[1]
	end
end

function commit
	if count $argv > 0
		git commit -m $argv
	else
		git commit
	end
end

function commitall
	addall
	if count $argv > 0
		commit $argv[1]
	else
		commit
	end
end

function amend
	if count $argv > 0
		git commit --amend $argv[1]
	else
		git commit --amend
	end
end

function pushnew
	git push --set-upstream origin (git rev-parse --abbrev-ref HEAD)
end

# Random/general functions
function code
    if count $argv > 0
        idea $argv[1]
    end
end

function text
    if count $argv > 0
        open -a "Sublime Text" $argv[1]
    end
end
