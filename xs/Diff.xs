MODULE = Git::Raw			PACKAGE = Git::Raw::Diff

void
merge(self, from)
	Diff self
	Diff from

	CODE:
		int rc = git_diff_merge(self, from);
		git_check_error(rc);

void
patch(self, callback)
	Diff self
	SV *callback

	CODE:
		int rc = git_diff_print_patch(self, git_diff_cb, callback);

void
compact(self, callback)
	Diff self
	SV *callback

	CODE:
		int rc = git_diff_print_compact(self, git_diff_cb, callback);

void
DESTROY(self)
	Diff self

	CODE:
		git_diff_list_free(self);
