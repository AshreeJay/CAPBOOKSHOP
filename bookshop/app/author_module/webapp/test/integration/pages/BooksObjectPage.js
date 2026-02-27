sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'bookshop.authormodule',
            componentId: 'BooksObjectPage',
            contextPath: '/Authors/books'
        },
        CustomPageDefinitions
    );
});