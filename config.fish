ssh-add -K 2>/dev/null;



# General/random
alias please="sudo"



alias inmysql="mysql -uroot -p"



# PHP
alias phptest="vendor/bin/phpunit ."




# Composer
alias composerin="composer install"
alias composersin="composer install --prefer-source"
alias composerup="composer update"
alias composersup="composer update --prefer-source"



# Gulp
alias compileassets="./node_modules/.bin/gulp"
alias watchassets="./node_modules/.bin/gulp watch"



# Git
alias branch="git branch | grep \* | cut -d ' ' -f2"
alias changes="git status"
alias pull="git pull"
alias push="git push"
alias pushnew="git push --set-upstream origin (git rev-parse --abbrev-ref HEAD)"
alias addall="git add ."
alias master="checkout master"
alias masterin="merge master"
alias developmentin="merge development"
alias rebasewmaster="rebase master"
alias rebasewdevelopment="rebase development"
alias stashes="git stash list"
alias popstash="git stash pop"

# Git
function stash
    if count $argv > 0
        git stash save $argv[1]
    end
end

function revert
    if count $argv > 0
        git checkout -- $argv[1]
    end
end

function reverttomaster
    if count $argv > 0
        git checkout origin/master -- $argv[1]
    end
end


function unstage
    if count $argv > 0
        git reset HEAD -- $argv[1]
    end
end

function checkout
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

function merge
    if count $argv > 0
        git merge $argv[1]
    end
end

function rebase
    if count $argv > 0
        git rebase $argv[1]
    end
end



# PHP code
function sniff
    phpcs --ignore="vendor" --standard=PSR12 .
end

function fixer
    phpcbf --ignore="vendor" --standard=PSR12 .
end



# Files
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



function nvmi
    bass source (brew --prefix nvm)/nvm.sh --no-use ';' nvm $argv
end
