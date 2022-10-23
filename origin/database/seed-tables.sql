INSERT INTO users (id, email, name) -- constant record
    VALUES
        (uuid_nil (), 'NOT APPLICAPLE', 'NOT APPLICAPLE');
INSERT INTO users (id, email, name)
    VALUES
        ('0f99c8f3-2358-4d10-b8f8-e6812f4f63bf', 'rei@nerv.com', 'Rei'),
        ('a541fd15-37db-4b54-9501-78cde1ff9ba8', 'shinji@nerv.com', 'shinji'),
        ('338a1b7f-1f82-44d4-8edd-4d533d395d88', 'asuka@nerv.com', 'Asuka'),
        (gen_random_uuid (), 'tohji@nerv.com', 'Tohji'),
        (gen_random_uuid (), 'kaoru@nerv.com', 'Kaoru'),
        (gen_random_uuid (), 'mari@nerv.com', 'Mari'),
        (gen_random_uuid (), 'gendo@nerv.com', 'Gendo');

INSERT INTO communities (id, name) -- constant record
    VALUES
        (uuid_nil (), 'NOT APPLICAPLE');
INSERT INTO communities (id, name, description)
    VALUES
        ('442552ff-4fb9-459c-8f15-238f56310e42', 'Hackers', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
        ('67703dc2-b831-4146-83c4-a26ef8831aea', 'Vancouver', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
        ('70ea78d3-4ac0-4060-9e77-b72cd3f4c478', 'Ergonomic Keyboards', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
        ('9cac9cf9-aae8-4535-974e-e24ce536fee8', 'dog owners', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
        ('b7a3fd60-9ea0-44bc-a646-bc7f6784a586', 'Web Developers', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
        (gen_random_uuid (), 'Music', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
        (gen_random_uuid (), 'Books', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
        (gen_random_uuid (), 'Movies', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.');

INSERT INTO memberships (id, _user, _community)
    VALUES
        (gen_random_uuid (), '0f99c8f3-2358-4d10-b8f8-e6812f4f63bf', '442552ff-4fb9-459c-8f15-238f56310e42'),
        (gen_random_uuid (), '0f99c8f3-2358-4d10-b8f8-e6812f4f63bf', '67703dc2-b831-4146-83c4-a26ef8831aea'),
        (gen_random_uuid (), '0f99c8f3-2358-4d10-b8f8-e6812f4f63bf', '70ea78d3-4ac0-4060-9e77-b72cd3f4c478'),
        (gen_random_uuid (), 'a541fd15-37db-4b54-9501-78cde1ff9ba8', '442552ff-4fb9-459c-8f15-238f56310e42'),
        (gen_random_uuid (), 'a541fd15-37db-4b54-9501-78cde1ff9ba8', '9cac9cf9-aae8-4535-974e-e24ce536fee8'),
        (gen_random_uuid (), '338a1b7f-1f82-44d4-8edd-4d533d395d88', 'b7a3fd60-9ea0-44bc-a646-bc7f6784a586');

INSERT INTO posts (id, _user, _community, title) -- constant record
    VALUES
        (uuid_nil (), uuid_nil (), uuid_nil (), 'NOT APPLICAPLE');
INSERT INTO posts (id, _user, _community, title, body)
    VALUES
        ('5d2027b9-82ba-454b-be70-9396337d57c1', '0f99c8f3-2358-4d10-b8f8-e6812f4f63bf', '70ea78d3-4ac0-4060-9e77-b72cd3f4c478', 'titleasdf', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
        ('5aa00380-940c-420f-ab6b-ccc93c01e8e9', '0f99c8f3-2358-4d10-b8f8-e6812f4f63bf', '70ea78d3-4ac0-4060-9e77-b72cd3f4c478', 'title1325', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
        ('cb256027-cd57-4317-8d71-5b8fdf031545', '0f99c8f3-2358-4d10-b8f8-e6812f4f63bf', '67703dc2-b831-4146-83c4-a26ef8831aea', 'title0=2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
        ('289b133f-bec3-4196-8752-59ce5aa717d6', '0f99c8f3-2358-4d10-b8f8-e6812f4f63bf', '442552ff-4fb9-459c-8f15-238f56310e42', 'title890=21j', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
        ('ed69ad77-ae9f-4f12-b862-86ff8edd290e', 'a541fd15-37db-4b54-9501-78cde1ff9ba8', '442552ff-4fb9-459c-8f15-238f56310e42', 'title120925', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
        (gen_random_uuid (), 'a541fd15-37db-4b54-9501-78cde1ff9ba8', '67703dc2-b831-4146-83c4-a26ef8831aea', 'title12_021', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
        (gen_random_uuid (), '338a1b7f-1f82-44d4-8edd-4d533d395d88', '67703dc2-b831-4146-83c4-a26ef8831aea', 'title120910987', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.');

INSERT INTO comments (id, _user, _post, _parent) -- constant record
    VALUES
        (uuid_nil (), uuid_nil (), uuid_nil (), uuid_nil ());
INSERT INTO comments (id, _user, _post, body) -- direct comments (comments which does not reference other comments)
    VALUES
        ('3004bdbd-bf76-431a-a59c-fbb01ddd6d9d', '0f99c8f3-2358-4d10-b8f8-e6812f4f63bf', 'ed69ad77-ae9f-4f12-b862-86ff8edd290e', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
        ('595250ea-bda8-4ec3-adb8-e5ce5d4719b8', 'a541fd15-37db-4b54-9501-78cde1ff9ba8', '289b133f-bec3-4196-8752-59ce5aa717d6', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
        ('80203fe5-a62a-4c3c-89f9-2d75327b238b', '338a1b7f-1f82-44d4-8edd-4d533d395d88', 'cb256027-cd57-4317-8d71-5b8fdf031545', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
        (gen_random_uuid (), '5aa00380-940c-420f-ab6b-ccc93c01e8e9', gen_random_uuid (), 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
        (gen_random_uuid (), 'ed69ad77-ae9f-4f12-b862-86ff8edd290e', gen_random_uuid (), 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.');
