sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"bookshop/authormodule/test/integration/pages/AuthorsList",
	"bookshop/authormodule/test/integration/pages/AuthorsObjectPage",
	"bookshop/authormodule/test/integration/pages/BooksObjectPage"
], function (JourneyRunner, AuthorsList, AuthorsObjectPage, BooksObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('bookshop/authormodule') + '/test/flp.html#app-preview',
        pages: {
			onTheAuthorsList: AuthorsList,
			onTheAuthorsObjectPage: AuthorsObjectPage,
			onTheBooksObjectPage: BooksObjectPage
        },
        async: true
    });

    return runner;
});

