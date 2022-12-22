import unittest
import pickle
import pathlib
from BFAIR.mfa.INCA import parse_cobra_model
from BFAIR.parsers.data_import_parsers import atomMapping_reactions2_file_parser

current_dir = str(pathlib.Path(__file__).parent.absolute())


class test_methods(unittest.TestCase):
    def setUp(self):
        file_obj = open(
            current_dir
            + "/test_data/MFA_modelInputsData/input_parser_test_data.obj", "rb"
        )
        (
            coli_model,
            celegans_model,
        ) = pickle.load(file_obj)
        file_obj.close()

        self.coli_model = coli_model
        self.celegans_model = celegans_model

    """
    For now, all the tests are based on comparing the output of the custom
    functions to manually checked previously generated instances
    """

    def parse_cobra_model_json(self):
        """
        Tests the cobra model parser for a .json file
        """
        coli_model_ = self.coli_model
        coli_model = parse_cobra_model(
            current_dir + '/test_data/MFA_modelInputsData/Models/iJO1366.json',
            'iJO1366',
            'today',
        )
        self.assertEqual(coli_model_, coli_model)

    def parse_cobra_model_sbml(self):
        """
        Tests the cobra model parser for a .sbml file
        """
        celegans_model_ = self.celegans_model
        celegans_model = parse_cobra_model(
            current_dir
            + '/test_data/MFA_modelInputsData/Models/wormjam-20180125.sbml',
            'wormjam-20180125',
            'today',
        )
        self.assertEqual(celegans_model_, celegans_model)

class test_methods_atomMapping_reactions2_file_parser():
    def setUp(self):
        self.model_filename = "tests/test_data/MFA_modelParsingData/test_model.csv"
        self.model_name = "test_model" 
        self.id_columns_name = "reaction_id"
        self.equation_columns_name = "reaction_equation"

    def test_atomMapping_reactions2(self):
        """
        Tests the atomMapping_reactions2 function
        """
        df = atomMapping_reactions2_file_parser(
            self.model_filename,
            self.model_name,
            self.id_columns_name,
            self.equation_columns_name,
        )
        # tests that the stoichiometry is correctly parsed for compounds without carbon map
        self.assertEqual(df.query("id == 'R1")['reactants_stoichiometry_tracked'].values, {-1})

if __name__ == "__main__":
    unittest.main()
