from setuptools import setup, find_packages

setup(
    name='apiverve_guidgenerator',
    version='1.1.12',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='GUID Generator is a tool for generating Globally Unique Identifiers (GUIDs). It creates RFC 4122 version 4 UUIDs with multiple formatting options including uppercase, no hyphens, and braces.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
