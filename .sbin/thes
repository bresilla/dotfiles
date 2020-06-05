#!/usr/bin/env python3
"""
A command-line interface for thesaurus.com
Author: Ryan Sheatsley
Date: Thu Feb 27 2020
"""

import functools
import operator
import requests
import sys


class Thesaurus:
    """
    This object makes requests to backend APIs used by thesaurus.com. These
    backend APIs return JSON-encoded objects--this module is written for such
    an interface. The two APIs are used for spell-checking and synoynms.
    """

    def __init__(
        self,
        local=None,
        max_spell=5,
        min_syns=5,
        spell_api="https://api-portal.dictionary.com/spellSuggestions/",
        thesaurus_api="https://tuna.thesaurus.com/pageData/",
        word=None,
    ):
        """
        Nearly all class methods rely on the following paramaters:
        local - TODO
        max_spell - maximum number of spelling suggestions to show
        min_syns - desired minimum number of synonyms to show
        spell_api - backend api for spell checking
        thesaurus_api - backend api for synonyms
        word - the word to search for
        """

        # setup args, local storage, and remote apis
        self.local = local
        self.max_spell = max_spell
        self.min_syns = min_syns
        self.spell_api = spell_api
        self.thesaurus_api = thesaurus_api
        self.word = word

    def interactive(self, options, prompt="definition"):
        """
        Takes input to select desired option 
        options - set of valid inputs
        prompt - informs the user what the interaction is about
        """

        # prompt for desired definition
        print("Select a", prompt, "[1-" + str(len(options)) + "]:")
        while True:
            selection = input()
            try:
                selection = int(selection)
                if selection not in options:
                    raise LookupError
                return selection - 1
            except (LookupError, ValueError) as e:
                print(
                    "Invalid selection:",
                    selection,
                    "Must be between (1-" + str(len(options)) + ").",
                )

    def parse(self, response, word, keys=["data", "definitionData", "definitions"]):
        """
        Parses JSON for definitions and synonyms
        response - JSON object we parse through
        word - argument used to perform the request
        keys - list of desired nested keys in the response
        """

        # parse definitions
        try:
            definitions = functools.reduce(operator.getitem, keys, response)
            print("Definitions for", word)
        except TypeError as e:
            print("No results found for", word)
            return -1
        options = set()
        for idx, definition in enumerate(definitions):
            options.add(idx + 1)
            print(idx + 1, "-", "(" + definition["pos"] + ")", definition["definition"])

        # select definition
        return (
            self.synonyms(
                definitions[self.interactive(options)], self.word, self.min_syns
            )
            if len(definitions) > 1
            else self.synonyms(definitions[0], self.word, self.min_syns)
        )

    def request(self, word, thesaurus_api):
        """
        Performs thesuarus request
        word - word to request for
        thesaurus_api - thesaurus api backend
        """

        # TODO check local storage
        if False:
            pass

        # otherwise, query remote api
        else:
            return self.parse(
                requests.get(url=thesaurus_api + word.replace(" ", "%20")).json(),
                self.word,
            )

    def spellcheck(self, word, spell_api, max_spell, keys=["data", "luna"]):
        """
        Performs spell check request (and some trivial parsing)
        word - word to spellcheck
        spell_api - api to for spellchecking
        max_spell - maximum number of spelling suggestions
        keys - list of nested keys in the response
        """

        # perform spell check request and handle misspelled requests
        spelling = functools.reduce(
            operator.getitem,
            keys,
            requests.get(url=spell_api + word.replace(" ", "%20")).json(),
        )
        if len(spelling):
            print('"' + word + '"', "is invalid - did you mean any of the following?")
            options = set()
            for idx, option in enumerate(spelling[:max_spell]):
                options.add(idx + 1)
                print(str(idx + 1).rjust(2), "-", option)

            # some suggestions can be invalid...
            self.word = spelling[self.interactive(options, prompt="word")].replace(
                "'", ""
            )
        return self.request(self.word, self.thesaurus_api)

    def synonyms(self, definition, word, min_syns):
        """
        Show synonyms for specific definition of a word
        definition - definition of word to be used
        word - argument used to perform the request
        min_syns - desired minimum number of synonyms shown
        """

        # show all terms with maximum similarity scores (and then some if i < n)
        print("Top synonyms for", word)
        for idx, synonym in enumerate(definition["synonyms"]):
            print(str(idx + 1).rjust(2), "-", synonym["term"])
            if synonym["similarity"] != "100" and idx >= min_syns:
                return 0

    def query(self, word):
        """ 
        Parses arguments from the command line
        word - command line arguments
        """
        try:
            self.word = " ".join(word[1:])
            assert self.word
        except:
            print("Error parsing command-line arguments. (Missing search term?)")
            return -1
        return self.spellcheck(self.word, self.spell_api, self.max_spell)


def main():
    """
    To interact with the Thesaurus object, just pass in the desired word from
    the command line. The main interface is through query().
    """
    th = Thesaurus()
    raise SystemExit(th.query(sys.argv))


if __name__ == "__main__":
    main()
