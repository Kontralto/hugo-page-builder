# DOM Testing

Conclusion
* Use Jest as the test running
* add Jest DOM extension
* consider adding DOM Testing Library to the mix if there's anything that the first two can't do easily. 

## Jest testing
https://jestjs.io/

TS support. Works well, most people that encounter JS testing have used it. Widely adopted and well maintained. 

## Jest DOM
https://www.npmjs.com/package/@testing-library/jest-dom

Extends Jest.

* Can assert on style rules
* many other useful things to assert on
  * might be worthwhile to write tests to check for the classes the default values
    * make sure the wrapper has all the classes it's supposed to
    * make sure that a components default options are not bad (ie white button on a white bg)
  * base tests for all components:
    * images have alt text, other a11y concerns

## DOM Testing Library
https://testing-library.com/docs/dom-testing-library/intro/

Recommended to be used with Jest.

This seems to be one of the more comprehensive FE test libraries. The DOM testing library is the core tool used in the various other testing libraries on this site (such as those for React and Angular). Can fire events, assert against a11y, etc.

* Looks like it provides a nice API for getting the element on the page
* Don't see anything for asserting on style rules

## Chai
https://www.chaijs.com/guide/styles/

Doesn't jump out as superior to the other options.

