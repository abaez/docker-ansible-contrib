# Ansible contribution container
[![twitter][2i]][2l]
[![license][3i]][3l]
## A lil' container for contributing to the awesomesauce called [Ansible][1]

### DESCRIPTION
A docker container to be used for contributing or tweaking ansible. Nothing
too breathtaking. Using the ansible's [helping testing][4] for guidelines
in building the container. Currently uses `bash -c` as the entrypoint for ease
of use. It holds `hacking/env-setup` on startup automatically, with a
`git -C /ansible pull` for the local container repository.


[1]: http://www.ansible.com/
[2i]: https://img.shields.io/badge/twitter-a_baez-blue.svg
[2l]: https://twitter.com/a_baez
[3i]: https://img.shields.io/badge/license-BSD-green.svg
[3l]: ./LICENSE
[4]: http://docs.ansible.com/ansible/developing_test_pr.html
