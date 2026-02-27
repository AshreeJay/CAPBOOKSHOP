sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'bookshop.authormodule',
            componentId: 'AuthorsList',
            contextPath: '/Authors'
        },
        CustomPageDefinitions
    );
});