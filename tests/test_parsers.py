from BFAIR.parsers import reaction_parser

def test_reaction_parser_no_asterisk_coefficients():
    '''
    Test that the reaction parser works without asterisk coefficients
    '''

    # Define the reaction string
    reaction_string = 'A (ab) + 0.5 B (cd) -> C (ac) + 9 D (bd)'
    reaction_string2 = 'A + 0.5 B (cd) -> C + D (dc)'
    reaction_string_digit_in_met_id = 'glc -> g6p'
    reaction_string_digit_in_end_of_met_id = 'glc -> co2'
    reaction_string_initial_coefficient = '2.0 A (ab) + B -> C (ab) + D'
    reaction_string_digit_in_start_of_met_id = 'glc -> 6gp'

    # Define the expected output
    expected_output = ([('A', 1.0, 'ab'), ('B', 0.5, 'cd')], [('C', 1.0, 'ac'), ('D', 9.0, 'bd')], False)
    expected_output2 = ([('A', 1.0, None), ('B', 0.5, 'cd')], [('C', 1.0, None ), ('D', 1.0, 'dc')], False)
    expected_output_digit_in_met_id = ([('glc', 1.0, None)], [('g6p', 1.0, None)], False)
    expected_output_initial_coefficient = ([('A', 2.0, 'ab'), ('B', 1.0, None)], [('C', 1.0, 'ab'), ('D', 1.0, None)], False)
    expected_output_digit_in_end_of_met_id = ([('glc', 1.0, None)], [('co2', 1.0, None)], False)
    expected_output_digit_in_start_of_met_id = ([('glc', 1.0, None)], [('6gp', 1.0, None)], False)



    assert reaction_parser(reaction_string) == expected_output
    assert reaction_parser(reaction_string2) == expected_output2
    assert reaction_parser(reaction_string_digit_in_met_id) == expected_output_digit_in_met_id, "Reaction parser does not work with digits in metabolite IDs"
    assert reaction_parser(reaction_string_initial_coefficient) == expected_output_initial_coefficient, "Reaction parser does not work with initial stoichiometric coefficients"
    assert reaction_parser(reaction_string_digit_in_end_of_met_id) == expected_output_digit_in_end_of_met_id, "Reaction parser does not work with digits in the end of metabolite IDs"
    assert reaction_parser(reaction_string_digit_in_start_of_met_id) == expected_output_digit_in_start_of_met_id, "Reaction parser does not work with digits in the start of metabolite IDs"
