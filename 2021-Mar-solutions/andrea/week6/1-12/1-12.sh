#!/bin/bash

# 1.12: Hello, frontend!
#
# This exercise is mandatory
#
# A good developer creates well written READMEs that can be used to create Dockerfiles with ease.
#
# Clone, fork or download the project from https://github.com/docker-hy/material-applications/tree/main/example-frontend.
#
# Create a Dockerfile for the project (example-frontend) and give a command so that the project runs in a docker container with port 5000 exposed and published so when you start the container and navigate to http://localhost:5000 you will see message if you’re successful.
#
# Submit the Dockerfile.
#
# As in other exercises, do not alter the code of the project
#
# TIP: The project has install instructions in README.
#
# TIP: Note that the app starts to accept connections when “Accepting connections at http://localhost:5000” has been printed to the screen, this takes a few seconds
#
# TIP: You do not have to install anything new outside containers.

IMAGE=docker-exercises:1-12
CONTAINER_NAME=1_12

docker build . -t $IMAGE

docker run --rm --name=$CONTAINER_NAME -d -p 5000:5000 $IMAGE

sleep 6 # this is not a good way to wait for a service to be ready, but that's outside the scope of this exercise

curl http://localhost:5000

docker container stop $CONTAINER_NAME

docker image rm $IMAGE

## output of curl
# <!doctype html><html lang="en"><head><meta charset="utf-8"/><meta name="viewport" content="width=device-width,initial-scale=1"/><meta name="theme-color" content="#000000"/><meta name="description" content="Frontend for docker course"/><link rel="manifest" href="/manifest.json"/><title>Docker frontend</title><link href="/static/css/main.eaa5d75e.chunk.css" rel="stylesheet"></head><body><noscript>You need to enable JavaScript to run this app.</noscript><div id="root"></div><script>!function(e){function r(r){for(var n,l,f=r[0],a=r[1],p=r[2],c=0,s=[];c<f.length;c++)l=f[c],Object.prototype.hasOwnProperty.call(o,l)&&o[l]&&s.push(o[l][0]),o[l]=0;for(n in a)Object.prototype.hasOwnProperty.call(a,n)&&(e[n]=a[n]);for(i&&i(r);s.length;)s.shift()();return u.push.apply(u,p||[]),t()}function t(){for(var e,r=0;r<u.length;r++){for(var t=u[r],n=!0,f=1;f<t.length;f++){var a=t[f];0!==o[a]&&(n=!1)}n&&(u.splice(r--,1),e=l(l.s=t[0]))}return e}var n={},o={1:0},u=[];function l(r){if(n[r])return n[r].exports;var t=n[r]={i:r,l:!1,exports:{}};return e[r].call(t.exports,t,t.exports,l),t.l=!0,t.exports}l.m=e,l.c=n,l.d=function(e,r,t){l.o(e,r)||Object.defineProperty(e,r,{enumerable:!0,get:t})},l.r=function(e){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(e,"__esModule",{value:!0})},l.t=function(e,r){if(1&r&&(e=l(e)),8&r)return e;if(4&r&&"object"==typeof e&&e&&e.__esModule)return e;var t=Object.create(null);if(l.r(t),Object.defineProperty(t,"default",{enumerable:!0,value:e}),2&r&&"string"!=typeof e)for(var n in e)l.d(t,n,function(r){return e[r]}.bind(null,n));return t},l.n=function(e){var r=e&&e.__esModule?function(){return e.default}:function(){return e};return l.d(r,"a",r),r},l.o=function(e,r){return Object.prototype.hasOwnProperty.call(e,r)},l.p="/";var f=this["webpackJsonpexample-frontend"]=this["webpackJsonpexample-frontend"]||[],a=f.push.bind(f);f.push=r,f=f.slice();for(var p=0;p<f.length;p++)r(f[p]);var i=a;t()}([])</script><script src="/static/js/2.43ca3586.chunk.js"></script><script src="/static/js/main.b4669903.chunk.js"></script></body></html>1_12
#
# (also loaded the app from browser and saw the message 'Exercise 1.12: Congratulations! You configured your ports correctly!'
