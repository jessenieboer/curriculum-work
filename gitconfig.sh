git config branch.autosetuprebase always
git config branch.master.rebase false
git config branch.master.mergeOptions ff-only
git config commit.cleanup strip
git config commit.status false
git config commit.template .gitmessage
git config core.autocrlf false
git config core.fileMode false
git config core.safecrlf true
git remote add my-bdd-template git@github.com:jessenieboer/my-bdd-template.git
git remote set-url --push my-bdd-template no_push
git remote add python-project-template git@github.com:jessenieboer/python-project-template.git
git remote set-url --push python-project-template no_push
