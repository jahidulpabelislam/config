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
alias push="git push"
alias addall="git add ."

# Git
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

function pushnew
	git push --set-upstream origin (git rev-parse --abbrev-ref HEAD)
end
