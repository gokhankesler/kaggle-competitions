from setuptools import setup, find_packages

setup(
    name='Kaggle Competitions Kernels',
    version='0.1.0',
    description='''This repository contains kernels compiled for kaggle competitions.''',
    license="MIT",
    author='Gokhan Kesler',
    author_email='gokhankesler@gmail.com',
    install_requires=[
        'pandas',
        'matplotlib',
        'seaborn', 
        'sklearn'],
    )