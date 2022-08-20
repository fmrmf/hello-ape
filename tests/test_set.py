def test_set(simple_contract, alice, bob):
    assert simple_contract.count() == 0
    assert simple_contract.who() == alice.address

    tx = simple_contract.set(bob, sender=alice)

    logs = [log for log in simple_contract.Set.from_receipt(tx)]
    assert len(logs) == 1

    log = logs[0]
    assert log._prior == alice
    assert log._current == bob
    assert log._count == 1
