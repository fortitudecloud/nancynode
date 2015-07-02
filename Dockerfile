# Get base engine image
FROM 		lionelsdocker/nancy-demo

# Move to base directory
WORKDIR		/
RUN 		ls

# Stage build envirnoment & move
COPY 		. /nancynode
RUN		ls
WORKDIR		/nancynode
RUN		ls

# Build solution
RUN         	xbuild nancynode.sln

# Deploy solution to engine
WORKDIR		/nancynode/nancynode
RUN		ls
#RUN 		mv /nancynode/nancynode/bin /src/src
#RUN		tce-load -iw rsync
#RUN		rsync -a nancynode/nancynode/bin/ src/src/bin/
RUN		(cd bin && tar c .) | (cd /src/src/bin/ && tar xf -)

# Restore engine directory
WORKDIR		/
RUN 		ls
WORKDIR		/src
RUN 		ls
WORKDIR		/src/src
RUN 		ls
WORKDIR		/src/src/bin
RUN 		ls
WORKDIR		/src/src/bin/Views
RUN 		ls

WORKDIR		/src
