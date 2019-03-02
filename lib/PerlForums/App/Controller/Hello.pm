package PerlForums::App::Controller::Hello;
use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller'; }

=head1 NAME

PerlForums::App::Controller::Hello - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    my $first_variable = "Hello There? I am your first variable and scalar in nature";

    my @array = ['Perl', 'Python', 'Java', 'Julia', 'Ruby'];

    my %hash = (
        'first_name' => 'Hitesh',
        'last_name'  => 'Mishra',
        'age'        => '45',
        'country'    => 'India'
    );

    my @aoh = (
        {
            'first_name' => 'Hitesh',
            'last_name'  => 'Mishra',
            'age'        => '45',
            'country'    => 'India'
        },
        {
            'first_name' => 'John',
            'last_name'  => 'Doe',
            'age'        => '48',
            'country'    => 'England'
        },
        {
            'first_name' => 'Jim',
            'last_name'  => 'Russel',
            'age'        => '33',
            'country'    => 'Russia'
        }
    );

    $c->stash(
        template => 'hello.tt',
        first_variable => $first_variable,
        array => @array,
        hash  => \%hash,
        aoh   => \@aoh
    );
}



=encoding utf8

=head1 AUTHOR

Ashutosh Kukreti

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
