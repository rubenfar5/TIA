:- use_module(library(dom)).

init :-
    create(li, LI),
    add_class(LI, 'list-group-item'), % Style
    html(LI, 'Hello, Tau Prolog!'),
    get_by_id('results-greet', Parent),
    append_child(Parent, LI).