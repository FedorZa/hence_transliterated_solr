FROM hence/solr:latest

COPY mapping-ISOLatin1Accent.txt /tmp

RUN cp -r /etc/solr/presets/drupal/search_api/5.x /etc/solr/presets/drupal/search_api/5.x.t
RUN cp -r /etc/solr/presets/drupal/search_api/5.x-fuzzy /etc/solr/presets/drupal/search_api/5.x.t-fuzzy
RUN cp -f /tmp/mapping-ISOLatin1Accent.txt /etc/solr/presets/drupal/search_api/5.x.t
RUN cp -f /tmp/mapping-ISOLatin1Accent.txt /etc/solr/presets/drupal/search_api/5.x.t-fuzzy
RUN rm /tmp/mapping-ISOLatin1Accent.txt