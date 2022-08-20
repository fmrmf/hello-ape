import pytest


@pytest.fixture(scope="module")
def alice(accounts):
    return accounts[0]


@pytest.fixture(scope="module")
def bob(accounts):
    return accounts[1]


@pytest.fixture(scope="module")
def simple_contract(project, alice):
    return alice.deploy(project.SimpleContract)
