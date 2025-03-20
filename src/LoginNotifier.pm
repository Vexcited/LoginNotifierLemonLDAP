package Lemonldap::NG::Portal::Plugins::LoginNotifier;

use Mouse;
use Lemonldap::NG::Portal::Main::Constants;
extends 'Lemonldap::NG::Portal::Main::Plugin';

sub init {
  my ($self) = @_;
  $self->logger->debug("INIT LOGINNOTIFIER");

  # This is how you declare HTTP routes
  # $self->addUnauthRoute( mypath => 'hello', [ 'GET' ] );

  # The function can return 0 to indicate failure
  return 1;
}

# sub hello {
#   my ($self, $req) = @_;
#   $self->logger->debug("INIT HELLO LOGINNOTIFIER");
#   return $self->p->sendJSONresponse($req, { hello => 1 });
# }

# Your file must return 1, or Perl will complain.
1;