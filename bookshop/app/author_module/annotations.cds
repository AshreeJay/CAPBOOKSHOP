using AdminService as service from '../../srv/admin-service';

annotate service.Authors with @(
    UI.FieldGroup #GeneratedGroup: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'ID',
                Value: ID,
            },
            {
                $Type: 'UI.DataField',
                Label: 'name',
                Value: name,
            },
        ],
    },
    UI.Facets                    : [
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'GeneratedFacet1',
            Label : 'General Information',
            Target: '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'BooksReferenceFacet',
            Label : 'Books',
            Target: 'books/@UI.LineItem#BooksList',
        },
    ],
    UI.LineItem                  : [
        {
            $Type: 'UI.DataField',
            Label: 'ID',
            Value: ID,
        },
        {
            $Type: 'UI.DataField',
            Label: 'name',
            Value: name,
        },
        {
            $Type: 'UI.DataField',
            Label: 'createdAt',
            Value: createdAt,
        },
        {
            $Type: 'UI.DataField',
            Label: 'createdBy',
            Value: createdBy,
        },
        {
            $Type: 'UI.DataField',
            Label: 'modifiedAt',
            Value: modifiedAt,
        },
        {
            $Type: 'UI.DataField',
            Label: 'modifiedBy',
            Value: modifiedBy,
        },
        {
            $Type : 'UI.DataFieldForAssociation',
            Label : 'Books',
            Target: 'books'
        }
    ],
);

annotate service.Books with @(
    UI.HeaderInfo             : {
        TypeName      : 'Book',
        TypeNamePlural: 'Books',
        Title         : {
            $Type: 'UI.DataField',
            Value: title
        },
        Description   : {
            $Type: 'UI.DataField',
            Value: descr
        }
    },
    UI.LineItem #BooksList    : [
        {
            $Type: 'UI.DataField',
            Label: 'ID',
            Value: ID,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Title',
            Value: title,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Description',
            Value: descr,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Price',
            Value: price,
        }
    ],
    UI.FieldGroup #GenericInfo: 
        {
            $Type: 'UI.FieldGroupType',
            Data : [
                {
                    $Type: 'UI.DataField',
                    Label: 'ID',
                    Value: ID,
                },
                {
                    $Type: 'UI.DataField',
                    Label: 'name',
                    Value: name,
                },
                {
                    $Type: 'UI.DataField',
                    Label: 'createdAt',
                    Value: createdAt,
                },
                {
                    $Type: 'UI.DataField',
                    Label: 'createdBy',
                    Value: createdBy,
                },
                {
                    $Type: 'UI.DataField',
                    Label: 'modifiedAt',
                    Value: modifiedAt,
                },
                {
                    $Type: 'UI.DataField',
                    Label: 'modifiedBy',
                    Value: modifiedBy,
                }
            ],
        }
    ,

    UI.Facets                 : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'GenericInfoFacet',
        Label : 'Generic Information',
        Target: '@UI.FieldGroup#GenericInfo',
    }]
);
