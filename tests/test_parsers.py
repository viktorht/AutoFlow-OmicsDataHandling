from BFAIR.parsers import reaction_parser

def test_reaction_parser_no_asterisk_coefficients():
    '''
    Test that the reaction parser works without asterisk coefficients
    '''

    # Define the reaction string
    reaction_string = 'A (ab) + 0.5 B (cd) -> C (ac) + 9 D (bd)'
    reaction_string2 = 'A + 0.5 B (cd) -> C + D (dc)'

    # Define the expected output
    expected_output = ([('A', 1.0, 'ab'), ('B', 0.5, 'cd')], [('C', 1.0, 'ac'), ('D', 9.0, 'bd')], False)
    expected_output2 = ([('A', 1.0, None), ('B', 0.5, 'cd')], [('C', 1.0, None ), ('D', 1.0, 'dc')], False)

    assert reaction_parser(reaction_string) == expected_output
    assert reaction_parser(reaction_string2) == expected_output2
