use utf8;
package PgDB::Schema::Result::Src;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

PgDB::Schema::Result::Src

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<src>

=cut

__PACKAGE__->table("src");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'src_id_seq'

=head2 value

  data_type: 'text'
  is_nullable: 1

=head2 src_type

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 customer

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "src_id_seq",
  },
  "value",
  { data_type => "text", is_nullable => 1 },
  "src_type",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "customer",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 customer

Type: belongs_to

Related object: L<PgDB::Schema::Result::Customer>

=cut

__PACKAGE__->belongs_to(
  "customer",
  "PgDB::Schema::Result::Customer",
  { id => "customer" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 src_groups

Type: has_many

Related object: L<PgDB::Schema::Result::SrcGroup>

=cut

__PACKAGE__->has_many(
  "src_groups",
  "PgDB::Schema::Result::SrcGroup",
  { "foreign.member" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 src_type

Type: belongs_to

Related object: L<PgDB::Schema::Result::SrcType>

=cut

__PACKAGE__->belongs_to(
  "src_type",
  "PgDB::Schema::Result::SrcType",
  { value => "src_type" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "NO ACTION",
    on_update     => "NO ACTION",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07043 @ 2015-07-11 10:05:05
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:9ba1VjMbuORT7+YoDz/OFg
# These lines were loaded from './PgDB/Schema/Result/Src.pm' found in @INC.
# They are now part of the custom portion of this file
# for you to hand-edit.  If you do not either delete
# this section or remove that file from @INC, this section
# will be repeated redundantly when you re-create this
# file again via Loader!  See skip_load_external to disable
# this feature.

use utf8;
package PgDB::Schema::Result::Src;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

PgDB::Schema::Result::Src

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<src>

=cut

__PACKAGE__->table("src");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'src_id_seq'

=head2 value

  data_type: 'text'
  is_nullable: 1

=head2 src_type

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 customer

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "src_id_seq",
  },
  "value",
  { data_type => "text", is_nullable => 1 },
  "src_type",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "customer",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 customer

Type: belongs_to

Related object: L<PgDB::Schema::Result::Customer>

=cut

__PACKAGE__->belongs_to(
  "customer",
  "PgDB::Schema::Result::Customer",
  { id => "customer" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 src_groups

Type: has_many

Related object: L<PgDB::Schema::Result::SrcGroup>

=cut

__PACKAGE__->has_many(
  "src_groups",
  "PgDB::Schema::Result::SrcGroup",
  { "foreign.member" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 src_type

Type: belongs_to

Related object: L<PgDB::Schema::Result::SrcType>

=cut

__PACKAGE__->belongs_to(
  "src_type",
  "PgDB::Schema::Result::SrcType",
  { value => "src_type" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "NO ACTION",
    on_update     => "NO ACTION",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07043 @ 2015-07-10 16:39:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:qbX9w2YW+yTS+Ya2jYxfOA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
# End of lines loaded from './PgDB/Schema/Result/Src.pm' 


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
