#!/bin/sh

die () {
    echo >&2 "$@"
    exit 1
}

[ "$#" -eq 1 ] || die "1 argument required, $# provided"

directory=$1

# create dir structure
for a in group_vars host_vars roles roles/common roles/common/tasks roles/common/handlers roles/common/templates roles/common/files ; do
	mkdir -p ${directory}/$a
done

# touch files
touch ${directory}/production
touch ${directory}/stage
touch ${directory}/site.yml
touch ${directory}/roles/common/tasks/main.yml
touch ${directory}/roles/common/tasks/main.yml


