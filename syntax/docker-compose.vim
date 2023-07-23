" Vim syntax file
" Language: Dockerfile
" Maintainer: Eugene Kalinin
" Latest Revision: 11 September 2013
" Source: https://docs.docker.com/compose/

if !exists('main_syntax')
    let main_syntax = 'yaml'
endif

" case sensitivity (fix #17)
" syn case  ignore

" Keywords
syn keyword dockercomposeKeywords additional_contexts aliases annotations args attach attachable aux_addresses
syn keyword dockercomposeKeywords bind blkio_config build cache_from cache_to cap_add cap_drop capabilities
syn keyword dockercomposeKeywords cgroup cgroup_parent command condition config configs consistency constraints
syn keyword dockercomposeKeywords container_name context count cpu_count cpu_percent cpu_period cpu_quota
syn keyword dockercomposeKeywords cpu_rt_period cpu_rt_runtime cpu_shares cpus cpuset create_host_path
syn keyword dockercomposeKeywords credential_spec delay depends_on deploy device_cgroup_rules device_ids
syn keyword dockercomposeKeywords device_read_bps device_read_iops device_write_bps device_write_iops devices
syn keyword dockercomposeKeywords disable discrete_resource_spec dns dns_opt dns_search dockerfile
syn keyword dockercomposeKeywords dockerfile_inline domainname driver driver_opts enable_ipv6 endpoint_mode
syn keyword dockercomposeKeywords entrypoint env_file environment expose extends external external_links
syn keyword dockercomposeKeywords extra_hosts failure_action file gateway generic_resources gid group_add hard
syn keyword dockercomposeKeywords healthcheck host_ip hostname image include init internal interval ip_range
syn keyword dockercomposeKeywords ipam ipc ipv4_address ipv6_address isolation kind labels limits link_local_ips
syn keyword dockercomposeKeywords links logging mac_address max_attempts max_failure_ratio max_replicas_per_node
syn keyword dockercomposeKeywords mem_limit mem_reservation mem_swappiness memory memswap_limit mode monitor
syn keyword dockercomposeKeywords name network network_mode networks no_cache nocopy oom_kill_disable
syn keyword dockercomposeKeywords oom_score_adj options order parallelism path pid pids pids_limit placement
syn keyword dockercomposeKeywords platform platforms ports preferences priority privileged profiles
syn keyword dockercomposeKeywords project_directory propagation protocol published pull pull_policy rate
syn keyword dockercomposeKeywords read_only registry replicas required reservations resources restart
syn keyword dockercomposeKeywords restart_policy retries rollback_config runtime scale secrets security_opt
syn keyword dockercomposeKeywords selinux service services shm_size size soft source spread ssh start_interval
syn keyword dockercomposeKeywords start_period stdin_open stop_grace_period stop_signal storage_opt subnet
syn keyword dockercomposeKeywords sysctls tags target template_driver test timeout tmpfs tty type uid ulimits
syn keyword dockercomposeKeywords update_config user userns_mode uts value version volume volumes volumes_from
syn keyword dockercomposeKeywords weight weight_device window working_dir

"" Logging
syn keyword dockercomposeKeywords logging log_driver env options max-size max-file
syn keyword dockercomposeKeywords syslog-address syslog-facility syslog-tls-ca-cert syslog-tls-cert
syn keyword dockercomposeKeywords syslog-tls-key syslog-tls-skip tag syslog-format gelf-address
syn keyword dockercomposeKeywords gelf-compression-type gelf-compression-level fluentd-address
syn keyword dockercomposeKeywords fluentd-buffer-limit fluentd-retry-wait fluentd-max-retries
syn keyword dockercomposeKeywords fluentd-async-connect awslogs-region awslogs-group awslogs-stream
syn keyword dockercomposeKeywords splunk-token splunk-url splunk-source splunk-sourcetype splunk-index
syn keyword dockercomposeKeywords splunk-capath splunk-caname splunk-insecureskipverify gcp-project log-cmd

" Bash statements
setlocal iskeyword+=-
syn keyword bashStatement add-apt-repository adduser apk apt-get aptitude apt-key autoconf bundle
syn keyword bashStatement cd chgrp chmod chown clear complete composer cp curl du echo egrep
syn keyword bashStatement expr fgrep find gem gnufind gnugrep gpg grep groupadd head less ln
syn keyword bashStatement ls make mkdir mv node npm pacman pip pip3 php python rails rm rmdir rpm ruby
syn keyword bashStatement sed sleep sort strip tar tail tailf touch useradd virtualenv yum
syn keyword bashStatement usermod bash cat a2ensite a2dissite a2enmod a2dismod apache2ctl
syn keyword bashStatement wget gzip

" Strings
syn region dockercomposeString start=/"/ skip=/\\"/ end=/"/
syn region dockercomposeString1 start=/'/ skip=/\\'/ end=/'/

" Emails
syn region dockercomposeEmail start=/</ end=/>/ contains=@ oneline

" Urls
syn match dockercomposeUrl /\(http\|https\|ssh\|hg\|git\)\:\/\/[a-zA-Z0-9\/\-\.]\+/

" Task tags
syn keyword dockercomposeTodo contained TODO FIXME XXX

" Comments
syn region dockercomposeComment start="#" end="\n" contains=dockercomposeTodo

" Highlighting
hi link dockercomposeKeywords  Keyword
hi link dockercomposeString    String
hi link dockercomposeString1   String
hi link dockercomposeComment   Comment
hi link dockercomposeEmail     Identifier
hi link dockercomposeUrl       Identifier
hi link dockercomposeTodo      Todo
hi link bashStatement       Function

let b:current_syntax = "dockercompose"
