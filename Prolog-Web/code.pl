:- use_module(library(js)).

alert(Text) :-
    prop(alert, Alert),
    apply(Alert, [Text], _).

init :-
    alert('Hello, Tau Prolog!').