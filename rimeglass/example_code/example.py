%5%import %RESET%math

%8%# %3%%HIGHLIGHT%TODO%RESET%%8%: Write all of the code

%1%%BOLD%def %RESET%%4%hello_world%RESET%():
    %1%%BOLD%if %RESET%%4%True%RESET%:
        %1%%BOLD%return %RESET%%6%"Hello, world!"
    %1%%BOLD%else%RESET%:
        %1%%BOLD%raise %2%RuntimeError%RESET%(%6%"No world to greet!"%RESET%)

%1%%BOLD%def %RESET%%4%main%RESET%():
    %8%# Print hello world message
    %4%print%RESET%(hello_world())

%1%%BOLD%if %RESET%__name__ == %6%"__main__"%RESET%:
    main()
