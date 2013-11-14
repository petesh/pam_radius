RADIUS authentication PAM module
================================

The fundamental problem is that the freeRADIUS project's PAM module is
available under the GPL, and not under other licenses. It turns out
that if the module is used in any proprietary products, then the GPL
license infects the application due to the module being dynamically
loaded during the course of the PAM invocation.

This is a problem for companies that wish to integrate PAM
authentication without having to GPL their entire source base due
to the infectious nature of the license.

The original module is taken from http://opensource.apple.com/ and
depends on the dual licensed BSD/GPL package libpwdb. It will be
modified to use the the FreeRADIUS client library, which is BSD
licensed.

References:

 - http://opensource.apple.com/source/pam/pam-9/pam/modules/pam_radius/
 - http://freeradius.org/freeradius-client/
