### Enable aws cli command completion ###
[ -x "$(command -v aws_completer)" ] && complete -C aws_completer aws

### Initialize AWS_PROFILE variable ###
# Change this to switch different aws profile.
TEST_AWS_PROFILE=test
if [[ $(aws configure list-profiles | grep -w $TEST_AWS_PROFILE) = $TEST_AWS_PROFILE ]]; then
    export AWS_PROFILE=$TEST_AWS_PROFILE
fi
