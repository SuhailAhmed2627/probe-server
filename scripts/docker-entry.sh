#!/bin/sh

echo "################## Waiting for mysql to accept incoming connections ##################"
until nc -z -v -w30 db 6666
do
   echo "     Waiting for database connection    "
   sleep 5
done

echo "################## Starting server ##################"
./server
