. ./token.sh
helm package charts/spring-boot --destination .deploy
cr upload -o dev-term -r charts -p .deploy --token $CH_TOKEN
git checkout gh-pages
cr index -i ./index.yaml -p .deploy --owner dev-term --repo charts
