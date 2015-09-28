# ## Functions ## #

#show newst log file to stdout in CWD
function snl {
    dog $(ls -lt | head -n2 | tail -n1 | awk '{print $NF}')
}

#show newst log file to stdout in CWD
function vnl {
    vim $(ls -lt | head -n2 | tail -n1 | awk '{print $NF}')
}


#quick start tmux script
function tms {
  ~/linux/scripts/tmux-scripts/$1
} 

# git clone handy tool
function gitclone {
    auth=$1
    repo=""
    if [ $# -eq 1 ]; then
        auth="jhallard"
        repo=$1 
    else 
        repo=$2
    fi

    echo $auth
    echo $repo

    git clone https://github.com/$auth/$repo
}

# get plain ip addr
function ext-ip () { lynx --dump http://ipecho.net/plain; }

# quick way to go up directories
# example : up 3
function up {
    local d=""
    limit=$1
    for ((i=1 ; i <= limit ; i++))
            do
                    d=$d/..
            done
    d=$(echo $d | sed 's/^\///')
    if [ -z "$d" ]; then
            d=..
    fi
    cd $d
}  


#function to generate a cpp project template
function cppgenerate {
    proj_name=$1

if [ ! -d $proj_name ]; then
    mkdir $proj_name
    mkdir -p $proj_name/src $proj_name/build
    touch $proj_name/README.md
    echo "**$proj_name**" >> $proj_name/README.md
    cd $proj_name
    shift

    while test ${#} -gt 0
        do
            var=$1
            shift
            touch src/$var.h
            touch src/$var.cpp
            varu=$(echo $var | awk '{print toupper($0)}' )
            proju=$(echo $proj_name | awk '{print toupper($0)}' )
            echo "#ifndef __"$proju"__"$varu"__" >> src/$var.h
            echo "#define __"$proju"__"$varu"__" >> src/$var.h
            printf "\n\n\n\n" >> src/$var.h
            echo "#endif" >> src/$var.h

            echo "#include \"src/$var.h\"" >> src/$var.cpp
        done
    return 0
fi

return 1
}
