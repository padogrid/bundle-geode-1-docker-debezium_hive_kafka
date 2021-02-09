# Geode Bundle Template

This bundle serves as a template for creating a new Geode onlne bundle.

## Installing Bundle

```bash
install_bundle -download bundle-geode-template
```

## Use Case

If you are creating a new online bundle, then you can use this template to create your bundle repo. It includes all the required files with marked annotations for you to quickly start developing a new online bundle. Please follow the steps shown below.

## 1. Create Repo

Select **Use this template** button in the upper right coner to create your repo. Make sure to follow the bundle naming conventions described in the following link.

## 2. Checkout Repo in Workspace

```bash
install_bundle -download -workspace <bundle-repo-name>
switch_workspace <bundle-repo-name>
```

## 3. Update Files

Update the files came with the template repo.

- `pom.xml`
- `assembly-descriptor.xml`
- `.gitignore`
- `README_HEADER.md`
- `README.md` (this file)
- `README.TEMPLATE` (Remove it when done. See instructions below.)

### 3.1. pom.xml

The `pom.xml` file contains instructions annocated with **@template**. Search **@template** and add your bundle specifics there.

### 3.2 assembly-descriptor.xml

This file creates a tarball that will be deployed when the user executes the `install_bundle -download` command. Search **@template** and add your bundle specfics there.

### 3.3 .gitignore

The `.gitignore` file lists workspace specific files to be excluded from getting checked in. Edit `.gitignore` and add new exludes or remove existing excludes.

```bash
vi .gitignore
```

Make sure to comment out your workspace directories (components) so that they can be included by `git`.

```console
...
# PadoGrid workspace directories
apps
clusters
docker
k8s
pods
...
```

## 3.4. README_HEADER.md

Enter a short description of your bundle in the `README_HEADER.md` file. This file content is displayed when you execute the `show_bundle -header` command.

## 3.5. READEME.md (this file)

Replace `README.md` with the README_TEMPLATE.md file. Make sure to remove `README_TEMPLATE.md` after you have replaced `READEME.md` with it.

```bash
cp README_TEMPLATE.md README.md
git rm README_TEMPLATE.md
```

Update the `READEME.md` file by following the instructions in that file.

## 4. Develop and Test Bundle

You can freely make changes and test the bundle in the workspace. When you are ready to check in, you simply commit the changes using the `git commit` command. For new files, you will need to select only the ones that you want to check in using the `git status -u` and `git diff` commands. For those files that you do not want to check in, you can list them in the `.gitignore` file so that they do not get checked in accidentally.

