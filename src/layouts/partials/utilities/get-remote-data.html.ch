%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
{{/*
Parses the serialized data from the given URL and returns a map or an array.
@y
{{/*
Parses the serialized data from the given URL and returns a map or an array.
@z

@x
Supports CSV, JSON, TOML, YAML, and XML.
@y
Supports CSV, JSON, TOML, YAML, and XML.
@z

@x
@param {string} . The URL from which to retrieve the serialized data.
@returns {any}
@y
@param {string} . The URL from which to retrieve the serialized data.
@returns {any}
@z

@x
@example {{ partial "get-remote-data.html" "https://example.org/foo.json" }}
*/}}
@y
@example {{ partial "get-remote-data.html" "https://example.org/foo.json" }}
*/}}
@z

@x
{{ $url := . }}
{{ $data := dict }}
{{ with resources.GetRemote $url }}
  {{ with .Err }}
    {{ errorf "%s" . }}
  {{ else }}
    {{ $data = .Content | transform.Unmarshal }}
  {{ end }}
{{ else }}
  {{ errorf "Unable to get remote resource %q" $url }}
{{ end }}
{{ return $data }}
@y
{{ $url := . }}
{{ $data := dict }}
{{ with resources.GetRemote $url }}
  {{ with .Err }}
    {{ errorf "%s" . }}
  {{ else }}
    {{ $data = .Content | transform.Unmarshal }}
  {{ end }}
{{ else }}
  {{ errorf "Unable to get remote resource %q" $url }}
{{ end }}
{{ return $data }}
@z
