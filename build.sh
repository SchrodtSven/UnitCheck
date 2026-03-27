#!/bin/sh
cd unitcheck
zephir fullclean 
zephir build 
zephir fullclean 
zephir stubs