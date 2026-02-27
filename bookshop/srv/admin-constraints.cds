using { AdminService  } from './admin-service';

annotate AdminService.Books with {
title @mandatory;
author @assert: (case when  not exists author then 'Author does not exist' end);
genre @mandatory @assert: (case
    when not exists genre then 'Specified Genre does not exist'
  end);

};

