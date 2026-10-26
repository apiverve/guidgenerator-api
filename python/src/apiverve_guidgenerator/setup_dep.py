from setuptools import setup, find_packages

setup(
    name='apiverve_guidgenerator',
    version='1.2.3',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='GUID Generator is a GUID generator API that creates RFC 4122 version 4 GUIDs in standard, uppercase, hyphen-free, or brace-wrapped formats. Pass a count and formatting style to receive a batch of unique IDs matching your structural requirements.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/guidgenerator?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
