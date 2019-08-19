class GroupsIndex < Chewy::Index

    # settings analysis: {
    #     analyzer: {
    #       name: {
    #         tokenizer: 'keyword',
    #         filter: ['lowercase']
    #       }
    #     }
    #   }

    define_type Group do
        field :group_code
        field :name
        field :location
        field :description
      end
end