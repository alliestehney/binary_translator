require 'minitest/autorun'
require 'minitest/pride'
require './lib/binary_translator'

class BinaryTranslatorTest < Minitest::Test
    def test_it_exists
        binary_translator = BinaryTranslator.new
        assert_instance_of BinaryTranslator, binary_translator
    end

    def test_it_translates_single_letter
        bt = BinaryTranslator.new
        actual = bt.translate_to_binary("f")
        expected = "000110"
        assert_equal expected, actual
    end

    def test_it_translates_single_binary_letter
        bt = BinaryTranslator.new
        actual = bt.translate_to_alpha("000110")
        expected = "f"
        assert_equal expected, actual
    end

    def test_it_translates_alpha_word_to_binary_word
        bt = BinaryTranslator.new
        actual = bt.translate_to_binary_word("taco")
        expected = "010100000001000011001111"
        assert_equal expected, actual
    end

    def test_it_translates_binary_word_to_alpha_word
        bt = BinaryTranslator.new
        actual = bt.translate_to_alpha_word("010011000001001100010011000001")
        expected = "salsa"
        assert_equal expected, actual
    end
end