%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
{{- /*
Renders a "new in" button indicating the version in which a feature was added.
@y
{{- /*
Renders a "new in" button indicating the version in which a feature was added.
@z

@x
When comparing the current version to the specified version, the "new in"
button will be hidden if any of the following conditions is true:
@y
When comparing the current version to the specified version, the "new in"
button will be hidden if any of the following conditions is true:
@z

@x
- The major version difference exceeds the majorVersionDiffThreshold
- The minor version difference exceeds the minorVersionDiffThreshold
@y
- The major version difference exceeds the majorVersionDiffThreshold
- The minor version difference exceeds the minorVersionDiffThreshold
@z

@x
@param {string} version The semantic version string, with or without a leading v.
@returns {template.HTML}
@y
@param {string} version The semantic version string, with or without a leading v.
@returns {template.HTML}
@z

@x
@example {{< new-in 0.100.0 >}}
*/}}
@y
@example {{< new-in 0.100.0 >}}
*/}}
@z

@x
{{- /* Set defaults. */}}
{{- $majorVersionDiffThreshold := 0 }}
{{- $minorVersionDiffThreshold := 30 }}
{{- $displayExpirationWarning := true }}
@y
{{- /* Set defaults. */}}
{{- $majorVersionDiffThreshold := 0 }}
{{- $minorVersionDiffThreshold := 30 }}
{{- $displayExpirationWarning := true }}
@z

@x
{{- /* Render. */}}
{{- with $version := .Get 0 | strings.TrimPrefix "v" }}
  {{- $majorVersionDiff := sub (index (split hugo.Version ".") 0 | int) (index (split $version ".") 0 | int) }}
  {{- $minorVersionDiff := sub (index (split hugo.Version ".") 1 | int) (index (split $version ".") 1 | int) }}
  {{- if or (gt $majorVersionDiff $majorVersionDiffThreshold) (gt $minorVersionDiff $minorVersionDiffThreshold) }}
    {{- if $displayExpirationWarning }}
      {{- warnf "This call to the %q shortcode should be removed: %s. The button is now hidden because the specified version (%s) is older than the display threshold." $.Name $.Position $version }}
    {{- end }}
  {{- else }}
    <button class="bg-white hover:bg-gray-100 text-gray-800 font-semibold py-2 mr2 mt2 px-4 border border-gray-400 rounded shadow">
      <a href="{{ printf "https://github.com/gohugoio/hugo/releases/tag/v%s" $version }}">New in v{{ $version }}</a>
    </button>
  {{- end }}
{{- else }}
  {{- errorf "The %q shortcode requires a positional parameter (version). See %s" .Name .Position }}
{{- end -}}
@y
{{- /* Render. */}}
{{- with $version := .Get 0 | strings.TrimPrefix "v" }}
  {{- $majorVersionDiff := sub (index (split hugo.Version ".") 0 | int) (index (split $version ".") 0 | int) }}
  {{- $minorVersionDiff := sub (index (split hugo.Version ".") 1 | int) (index (split $version ".") 1 | int) }}
  {{- if or (gt $majorVersionDiff $majorVersionDiffThreshold) (gt $minorVersionDiff $minorVersionDiffThreshold) }}
    {{- if $displayExpirationWarning }}
      {{- warnf "This call to the %q shortcode should be removed: %s. The button is now hidden because the specified version (%s) is older than the display threshold." $.Name $.Position $version }}
    {{- end }}
  {{- else }}
    <button class="bg-white hover:bg-gray-100 text-gray-800 font-semibold py-2 mr2 mt2 px-4 border border-gray-400 rounded shadow">
      <a href="{{ printf "https://github.com/gohugoio/hugo/releases/tag/v%s" $version }}">New in v{{ $version }}</a>
    </button>
  {{- end }}
{{- else }}
  {{- errorf "The %q shortcode requires a positional parameter (version). See %s" .Name .Position }}
{{- end -}}
@z
