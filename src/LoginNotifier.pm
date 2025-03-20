package Lemonldap::NG::Portal::Plugins::LoginNotifier;

use Mouse;
use Lemonldap::NG::Portal::Main::Constants;
extends 'Lemonldap::NG::Portal::Main::Plugin';

use constant beforeAuth => 'interceptDevice';

sub init {
  my ($self) = @_;
  
  $self->logger->debug("----------------------------- [LoginNotifier]: INIT");

  # This is how you declare HTTP routes
  # $self->addUnauthRoute( mypath => 'hello', [ 'GET' ] );

  return 1;
}

# sub hello {
#   my ($self, $req) = @_;
#   $self->logger->debug("INIT HELLO LOGINNOTIFIER");
#   return $self->p->sendJSONresponse($req, { hello => 1 });
# }


sub interceptDevice {
  my ($self, $req) = @_;

  $self->logger->debug("----------------------------- [LoginNotifier]: INTERCEPTING LOGIN");

  if ( $req->{env}->{REQUEST_METHOD} eq "POST" ) {
    $user_agent = $req->{env}->{HTTP_USER_AGENT};
    $self->logger->debug("POST REQUEST: " . $user_agent);
  }

  # define a variable

  if ( $self->conf->{logLevel} eq 'debug' ) {
    require Data::Dumper;
    $Data::Dumper::Indent  = 1;
    $Data::Dumper::Useperl = 1;
    $self->logger->debug( "Dump: " . Data::Dumper::Dumper($req) );
  }

  # if ( $cas_request->{service} eq "http://auth.sp.com/" ) {
  #     return PE_OK;
  # }
  # else {
  return PE_OK;
  # }
}


# Your file must return 1, or Perl will complain.
1;