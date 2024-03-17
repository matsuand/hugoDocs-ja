%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

% i18n 対応

@x (T "SeeAlso")
{{- $heading := "See also" }}
{{- $related := site.RegularPages.Related . | first 5 }}
@y
{{- $heading := (T "SeeAlso") }}
{{- $related := site.RegularPages.Related . | first 5 }}
@z
