#!/bin/bash

echo "Cleaning assets...................."
bundle exec rake assets:clobber
echo "---------------------------------------------------------------"
printf "\n"

echo "Precompiling test assets.................."
RAILS_ENV=test bundle exec rake assets:precompile
echo "---------------------------------------------------------------"
printf "\n"

echo "Precompiling production assets................"
RAILS_ENV=production bundle exec rake assets:precompile
echo "---------------------------------------------------------------"
printf "\n"

git st
