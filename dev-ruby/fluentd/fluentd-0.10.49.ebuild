# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-ruby/fluentd-0.10.49.ebuild

EAPI=2
USE_RUBY="ruby19 ruby20"

RUBY_FAKEGEM_TASK_DOC="docs"

RUBY_FAKEGEM_DOCDIR="doc"
RUBY_FAKEGEM_EXTRADOC="History.txt Manifest.txt README.txt"

RUBY_FAKEGEM_EXTRAINSTALL="template"

inherit ruby-fakegem

DESCRIPTION="An open source data collector designed for processing data streams."
HOMEPAGE="http://fluentd.org/"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 ~mips ppc ppc64 ~s390 ~sh sparc x86 ~x86-fbsd ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~sparc-solaris ~sparc64-solaris ~x64-solaris ~x86-solaris"
IUSE=""

ruby_add_bdepend "doc? ( dev-ruby/rdoc )"
# - also requires dev-ruby/hoe-seattlerb for 1.9;
# - dev-ruby/gemcutter is an optional dependency at both runtime and
#   test-time, at least for us;
# - rubyforge is loaded at runtime when needed, so we don't strictly
#   depend on it at runtime, but we need it for tests (for now);
ruby_add_bdepend "test? ( dev-ruby/rdoc dev-ruby/minitest >=dev-ruby/rubyforge-2.0.4 )"

ruby_add_rdepend ">=dev-ruby/msgpack-0.5.8"
ruby_add_rdepend ">=dev-ruby/yajl-ruby-1.1.0"
ruby_add_rdepend ">=dev-ruby/coolio-1.2.1"
ruby_add_rdepend ">=dev-ruby/http_parser_rb-0.6.0"
ruby_add_rdepend ">=dev-ruby/sigdump-0.2.2"