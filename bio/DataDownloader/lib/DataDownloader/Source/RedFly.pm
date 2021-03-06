package DataDownloader::Source::RedFly;

use Moose;
use Web::Scraper;
extends 'DataDownloader::Source::ABC';

use constant {
    TITLE       => 
        'RedFly GFF',
    DESCRIPTION => 
        "Transcriptional CRMs and TFBSs from RedFly",
    SOURCE_LINK => 
        "http://redfly.ccr.buffalo.edu",
    SOURCE_DIR => "flymine/redfly",
};

sub BUILD {
    my $self = shift;
    $self->set_sources([
        {
            SERVER  => 'http://redfly.ccr.buffalo.edu/datadumps',
            FILE    => "tfbs_dump.gff",
            SUB_DIR => ["tfbs"],
        },
        {
            SERVER  => 'http://redfly.ccr.buffalo.edu/datadumps',
            FILE    => "crm_dump.gff",
            SUB_DIR => ["crm"],
        },
    ]);
}


1;

