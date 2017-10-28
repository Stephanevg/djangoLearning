# virtual env

What is virtual env?

Virtual env allows to create an isolation between your project and the rest of your machine.

It allows for example to have the the same application running, but using different versions. It will also allow to upgrade for example a package on one project / website, without impacting the packages that are used in the other virtual environements (or even directly on your machine).

## Installing virtual env:

In a powershell prompt, type the following:

```powershell
pip install virtualenv
```

## How to create a new virtualenv?

In a powershell prompt

```powershell
virtualenv <NameOfYourNewVirtualEnvironment>

```

Example:

```powershell
virtualenv MyIsolatedProject

```

Then, to activate the virtualenv type:

In a powershell prompt

```powershell

.\MyIsolatedProject\scripts\activate

```

where are now in a virtual environment

![virtualenv](/images/06.01_virtualenv_01.png)


We can no start to work, and install packages using **pip**

## How do I deactivate the virtualenv?

1. Close the terminal Window
2. type deactivate <NameOfyourVirtualEnv>

