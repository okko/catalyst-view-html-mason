package TestAppGlobals::View::Global;

use Moose;
use namespace::autoclean;

extends 'Catalyst::View::HTML::Mason';

__PACKAGE__->config(
    globals => [
        '$maus', '@horde', '%stamm',
        ['$ctx' => sub { $_[1] }],
    ],
    interp_args => {
        comp_root => TestAppGlobals->path_to('root'),
    },
);

__PACKAGE__->meta->make_immutable;

1;