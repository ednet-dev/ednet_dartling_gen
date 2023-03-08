part of ednet_core_gen;

void genPubspecTxt(File file) {
  var text = '''
name: ${domainName}_${modelName}
author: Your Name
homepage: http://ondart.me/
version: 0.0.1
description: ${domainName}_${modelName} application that uses ednet_core for its model.
environment:
  sdk: '>=1.10.0 <2.0.0'
dependencies:
  browser: '>=0.10.0 <0.11.0'
  ednet_core: '>=2.0.0 <3.0.0'
  ednet_core_default_app: '>=2.0.0 <3.0.0'

dependencies:
  browser: '>=0.10.0 <0.11.0'
  ednet_core:
    git: 'https://github.com/context-dev/ednet_core.git'
  ednet_core_default_app:
    git: 'https://github.com/context-dev/ednet_core_default_app.git'

dependencies:
  browser: '>=0.10.0 <0.11.0'
  ednet_core: ^0.0.1+2
  ednet_core_default_app:
    path: 'C:\\Users\\ridjanod.FSA-RIDJANOD-2\\dart\\model\\ednet_core_default_app'

dependencies:
  browser: any
  ednet_core: ^0.0.1+2
  ednet_core_default_app:
    path: /home/johns/dart/model/ednet_core_default_app
  ''';
  addText(file, text);
}

void genGithub(File file) {
  var text = '''
github.txt for ${domainName}_${modelName}

GitHub, Git

https://github.com/
http://lifehacker.com/5983680/how-the-heck-do-i-use-github
http://www.codeschool.com/courses/try-git
http://git-scm.com/videos
http://marklodato.github.com/visual-git-guide/index-en.html
http://www.vogella.com/articles/Git/article.html
http://gitref.org/

Education

https://github.com/edu

Create an account at GitHub.

Read:

http://help.github.com/win-set-up-git/
http://www.ralfebert.de/blog/tools/git_screencast/
http://scottr.org/presentations/git-in-5-minutes/

-------------------------------------------------------------------------------

After creating an account, create a remote repository.

http://help.github.com/create-a-repo/

Create a New Repository at GitHub
(without README, since cloning will not be used).
Repository Name: ${domainName}_${modelName}
Description:
  Model generated by ednet_code_generation.

Please, replace johns (4x) by your GitHub account name.

Next steps:
  cd git/dart/${domainName}_${modelName}
  git init
  git status
  git add .
  git commit -m 'initial version'
  git remote add origin https://github.com/context-dev/${domainName}_${modelName}.git
  git push -u origin master

-------------------------------------------------------------------------------

Git with Git Bash

Clone a remote repository into a local repository.

cd git/dart
git clone https://github.com/context-dev/${domainName}_${modelName}.git
cd ${domainName}_${modelName}

Read+Write:
https://github.com/context-dev/${domainName}_${modelName}.git

Read only:
git://github.com/context-dev/${domainName}_${modelName}.git

Get the latest changes from the remote repository

git pull
or
git pull origin master

-------------------------------------------------------------------------------

Work with a local repository

cd git/dart/${domainName}_${modelName}

git status

git add .

git status

git commit -m 'short description'

git status

git rm file

git status

git push
or
git push origin master

git status

-------------------------------------------------------------------------------

Tagging for versions (spirals)

http://learn.github.com/p/tagging.html

git tag
git tag -a s00 -m 'spiral 00'
git tag

To push tags to the remote repository:

git push --tags

-------------------------------------------------------------------------------
  ''';
  addText(file, text);
}

void genDoc(String path) {
  var docPath = '${path}/doc';
  genDir(docPath);
  File pubspec = genFile('${docPath}/pubspec.txt');
  genPubspecTxt(pubspec);
  var specificChangesPath = '${docPath}/specific_changes';
  genDir(specificChangesPath);
  var gitPath = '${docPath}/git';
  genDir(gitPath);
  File github = genFile('${gitPath}/github.txt');
  genGithub(github);
}

