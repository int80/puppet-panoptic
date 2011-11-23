class panoptic {
  cpan::module {
    "DBIx-Class":
      module => 'DBIx::Class';
  }
  
  apt::source {
    "debian_multimedia":
      location => 'ftp://ftp.debian-multimedia.org',
      release => "stable",
      repos => "main non-free",
      key => "07DC563D1F41B907",
  }
  
  package {
    [libavdevice-dev, libavcodec-dev, libavfilter-dev,
     libavformat-dev, libavutil-dev]:
       ensure => installed;
  }
}
