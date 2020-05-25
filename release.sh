#!/bin/bash


GEM=`gem build release_experiments.gemspec | egrep -o "(release.*gem)"`
gem push $GEM
rm $GEM
