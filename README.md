This is the engineering challenge for the Engineer role at [Parallel Markets](https://parallelmarkets.com).  Please follow the instructions carefully.

## Background
The following is a hypothetical situation that would require some engineering and database design.  At Parallel, one process we have involves accepting information (name, email, etc) and files (tax documents and brokerage statements) from users to determine if they meet certain financial thresholds.  Whenever we sign up a new partner platform, that platform needs to import their existing list of investors and their documents into our system.  At that point, we can take over the ongoing process of ensuring user data and financial documents are kept up to date.

Imagine we'd like to create a new system for our partners to be able to input their investor users and documents. 

## Deliverable
Create a web application that allows a partner user to input an investor's information (list below) and at least 1 file into a form.  The partner user should be able to submit the form and then enter the next investor's information.  When the form is submitted, the investor information should be stored in a relational database, and the file should be stored on the server's filesystem.  You may use any language, framework, or tools that you'd like, as long as they are free and open source and can be run on either a Linux or Mac OS X machine.  Your web application does not need authentication or authorization capabilities.  Assume that uploaded files won't exceed 3 MB in size and that all input fields should be required.

The investor information that should be accepted (along with at least 1 file for upload) includes:

1. Investor first name
1. Investor last name
1. Investor date of birth
1. Investor phone number
1. Investor street address (assume US addresses only)
1. Investor state (assume US addresses only)
1. Investor zip code  (assume US addresses only)

Please include detailed instructions in a README file describing in full the process to setup/install any prerequisite software, initialize the relational database, and run the web application.

## Todo

- [x] Investor scaffold
- [ ] File upload
- [ ] Update README to setup and install server

## Submission
Please email [dev-admin@parallelmarkets.com](mailto:dev-admin@parallelmarkets.com) with one of the following:
1. The URL of a public Github or Gitlab repository that contains your code and instructions.
1. A zip file (or gzipped tarball) containing a git repository with your code and instructions.

## Evaluation Criteria
Your submission will be evaluated primarily on your adherence to these instructions and on the functional completeness of the solution.

Extra points will be awarded for:
1. Fully documenting both what you were able to complete and what you would want to do additionally if you had more time
1. A full git history showing your development style.
1. Authentication and authorization capabilities
1. Support for files larger than 3MB (upload progress indicator, etc)
1. Detecting and handling updating addresses for existing customers with matching names/SSNs
1. Tests

## Notes
* The goal is to see what you are able to accomplish in about 2 hours.  If you're still working after 2 hours, please just document (1) what you were able to complete and (2) what you would do if you were to devote more time to the challenge - and then submit those descriptions along with whatever code you've completed (following the Submission instructions above).
* Please submit your solution within a few days of receiving the challenge.
* Please feel free to email [dev-admin@parallelmarkets.com](mailto:dev-admin@parallelmarkets.com) with any questions.