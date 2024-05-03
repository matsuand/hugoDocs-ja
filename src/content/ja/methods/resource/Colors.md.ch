%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Colors
description: Applicable to images, returns a slice of the most dominant colors using a simple histogram method.
categories: []
keywords: []
action:
  related: []
  returnType: '[]images.Color'
  signatures: [RESOURCE.Colors]
toc: true
math: true
---
@y
---
title: Colors
description: Applicable to images, returns a slice of the most dominant colors using a simple histogram method.
categories: []
keywords: []
action:
  related: []
  returnType: '[]images.Color'
  signatures: [RESOURCE.Colors]
toc: true
math: true
---
@z

@x
{{< new-in 0.104.0 >}}
@y
{{< new-in 0.104.0 >}}
@z

@x
The `Resources.Colors` method returns a slice of the most dominant colors in an image, ordered from most dominant to least dominant. This method is fast, but if you also downsize your image you can improve performance by extracting the colors from the scaled image.
@y
The `Resources.Colors` method returns a slice of the most dominant colors in an image, ordered from most dominant to least dominant. This method is fast, but if you also downsize your image you can improve performance by extracting the colors from the scaled image.
@z

@x
{{% include "methods/resource/_common/global-page-remote-resources.md" %}}
@y
{{% include "methods/resource/_common/global-page-remote-resources.md" %}}
@z

@x
## Methods
@y
## Methods
@z

@x
Each color is an object with the following methods:
@y
Each color is an object with the following methods:
@z

@x
ColorHex
{{< new-in 0.125.0 >}}
: (`string`) Returns the [hexadecimal color] value, prefixed with a hash sign.
@y
ColorHex
{{< new-in 0.125.0 >}}
: (`string`) Returns the [hexadecimal color] value, prefixed with a hash sign.
@z

@x
Luminance
{{< new-in 0.125.0 >}}
: (`float64`) Returns the [relative luminance] of the color in the sRGB colorspace in the range [0, 1]. A value of `0` represents the darkest black, while a value of `1` represents the lightest white.
@y
Luminance
{{< new-in 0.125.0 >}}
: (`float64`) Returns the [relative luminance] of the color in the sRGB colorspace in the range [0, 1]. A value of `0` represents the darkest black, while a value of `1` represents the lightest white.
@z

@x
{{% note %}}
Image filters such as [`images.Dither`], [`images.Padding`], and [`images.Text`] accept either hexadecimal color values or `images.Color` objects as arguments.
@y
{{% note %}}
Image filters such as [`images.Dither`], [`images.Padding`], and [`images.Text`] accept either hexadecimal color values or `images.Color` objects as arguments.
@z

@x
Hugo renders an `images.Color` object as a hexadecimal color value.
@y
Hugo renders an `images.Color` object as a hexadecimal color value.
@z

@x
[`images.Dither`]: /functions/images/dither/
[`images.Padding`]: /functions/images/padding/
[`images.Text`]: /functions/images/text/
{{% /note %}}
@y
[`images.Dither`]: /functions/images/dither/
[`images.Padding`]: /functions/images/padding/
[`images.Text`]: /functions/images/text/
{{% /note %}}
@z

@x
[hexadecimal color]: https://developer.mozilla.org/en-US/docs/Web/CSS/hex-color
[relative luminance]: https://www.w3.org/TR/WCAG21/#dfn-relative-luminance
@y
[hexadecimal color]: https://developer.mozilla.org/en-US/docs/Web/CSS/hex-color
[relative luminance]: https://www.w3.org/TR/WCAG21/#dfn-relative-luminance
@z

@x
## Sorting
@y
## Sorting
@z

@x
As a contrived example, create a table of an image's dominant colors with the most dominant color first, and display the relative luminance of each dominant color:
@y
As a contrived example, create a table of an image's dominant colors with the most dominant color first, and display the relative luminance of each dominant color:
@z

@x
```go-html-template
{{ with resources.Get "images/a.jpg" }}
  <table>
    <thead>
      <tr>
        <th>Color</th>
        <th>Relative luminance</th>
      </tr>
    </thead>
    <tbody>
      {{ range .Colors }}
        <tr>
          <td>{{ .ColorHex }}</td>
          <td>{{ .Luminance | lang.FormatNumber 4 }}</td>
        </tr>
      {{ end }}
    </tbody>
  </table>
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "images/a.jpg" }}
  <table>
    <thead>
      <tr>
        <th>Color</th>
        <th>Relative luminance</th>
      </tr>
    </thead>
    <tbody>
      {{ range .Colors }}
        <tr>
          <td>{{ .ColorHex }}</td>
          <td>{{ .Luminance | lang.FormatNumber 4 }}</td>
        </tr>
      {{ end }}
    </tbody>
  </table>
{{ end }}
```
@z

@x
Hugo renders this to:
@y
Hugo renders this to:
@z

@x
ColorHex|Relative luminance
:--|:--
`#bebebd`|`0.5145`
`#514947`|`0.0697`
`#768a9a`|`0.2436`
`#647789`|`0.1771`
`#90725e`|`0.1877`
`#a48974`|`0.2704`
@y
ColorHex|Relative luminance
:--|:--
`#bebebd`|`0.5145`
`#514947`|`0.0697`
`#768a9a`|`0.2436`
`#647789`|`0.1771`
`#90725e`|`0.1877`
`#a48974`|`0.2704`
@z

@x
To sort by dominance with the least dominant color first:
@y
To sort by dominance with the least dominant color first:
@z

@x
```go-html-template
{{ range .Colors | collections.Reverse }}
```
@y
```go-html-template
{{ range .Colors | collections.Reverse }}
```
@z

@x
To sort by relative luminance with the darkest color first:
@y
To sort by relative luminance with the darkest color first:
@z

@x
```go-html-template
{{ range sort .Colors "Luminance" }}
```
@y
```go-html-template
{{ range sort .Colors "Luminance" }}
```
@z

@x
To sort by relative luminance with the lightest color first, use either of these constructs:
@y
To sort by relative luminance with the lightest color first, use either of these constructs:
@z

@x
```go-html-template
{{ range sort .Colors "Luminance" | collections.Reverse }}
{{ range sort .Colors "Luminance" "desc" }}
```
@y
```go-html-template
{{ range sort .Colors "Luminance" | collections.Reverse }}
{{ range sort .Colors "Luminance" "desc" }}
```
@z

@x
## Examples
@y
## Examples
@z

@x
### Image borders
@y
### Image borders
@z

@x
To add a 5 pixel border to an image using the most dominant color:
@y
To add a 5 pixel border to an image using the most dominant color:
@z

@x
```go-html-template
{{ with resources.Get "images/a.jpg" }}
  {{ $mostDominant := index .Colors 0 }}
  {{ $filter := images.Padding 5 $mostDominant }}
  {{ with .Filter $filter }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
  {{ end }}
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "images/a.jpg" }}
  {{ $mostDominant := index .Colors 0 }}
  {{ $filter := images.Padding 5 $mostDominant }}
  {{ with .Filter $filter }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
  {{ end }}
{{ end }}
```
@z

@x
To add a 5 pixel border to an image using the darkest dominant color:
@y
To add a 5 pixel border to an image using the darkest dominant color:
@z

@x
```go-html-template
{{ with resources.Get "images/a.jpg" }}
  {{ $darkest := index (sort .Colors "Luminance") 0 }}
  {{ $filter := images.Padding 5 $darkest }}
  {{ with .Filter $filter }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
  {{ end }}
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "images/a.jpg" }}
  {{ $darkest := index (sort .Colors "Luminance") 0 }}
  {{ $filter := images.Padding 5 $darkest }}
  {{ with .Filter $filter }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
  {{ end }}
{{ end }}
```
@z

@x
### Light text on dark background
@y
### Light text on dark background
@z

@x
To create a text box where the foreground and background colors are derived from an image's lightest and darkest dominant colors:
@y
To create a text box where the foreground and background colors are derived from an image's lightest and darkest dominant colors:
@z

@x
```go-html-template
{{ with resources.Get "images/a.jpg" }}
  {{ $darkest := index (sort .Colors "Luminance") 0 }}
  {{ $lightest := index (sort .Colors "Luminance" "desc") 0 }}
  <div style="background: {{ $darkest }};">
    <div style="color: {{ $lightest }};">
      <p>This is light text on a dark background.</p>
    </div>
  </div>
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "images/a.jpg" }}
  {{ $darkest := index (sort .Colors "Luminance") 0 }}
  {{ $lightest := index (sort .Colors "Luminance" "desc") 0 }}
  <div style="background: {{ $darkest }};">
    <div style="color: {{ $lightest }};">
      <p>This is light text on a dark background.</p>
    </div>
  </div>
{{ end }}
```
@z

@x
### WCAG contrast ratio
@y
### WCAG contrast ratio
@z

@x
In the previous example we placed light text on a dark background, but does this color combination conform to [WCAG] guidelines for either the [minimum] or the [enhanced] contrast ratio?
@y
In the previous example we placed light text on a dark background, but does this color combination conform to [WCAG] guidelines for either the [minimum] or the [enhanced] contrast ratio?
@z

@x
The WCAG defines the [contrast ratio] as:
@y
The WCAG defines the [contrast ratio] as:
@z

@x
$$contrast\ ratio = { L_1 + 0.05 \over L_2 + 0.05 }$$
@y
$$contrast\ ratio = { L_1 + 0.05 \over L_2 + 0.05 }$$
@z

@x
where $L_1$ is the relative luminance of the lighest color and $L_2$ is the relative luminance of the darkest color.
@y
where $L_1$ is the relative luminance of the lighest color and $L_2$ is the relative luminance of the darkest color.
@z

@x
Calculate the contrast ratio to determine WCAG conformance:
@y
Calculate the contrast ratio to determine WCAG conformance:
@z

@x
```go-html-template
{{ with resources.Get "images/a.jpg" }}
  {{ $lightest := index (sort .Colors "Luminance" "desc") 0 }}
  {{ $darkest := index (sort .Colors "Luminance") 0 }}
  {{ $cr := div
    (add $lightest.Luminance 0.05)
    (add $darkest.Luminance 0.05)
  }}
  {{ if ge $cr 7.5 }}
    {{ printf "The %.2f contrast ratio conforms to WCAG Level AAA." $cr }}
  {{ else if ge $cr 4.5 }}
    {{ printf "The %.2f contrast ratio conforms to WCAG Level AA." $cr }}
  {{ else }}
    {{ printf "The %.2f contrast ratio does not conform to WCAG guidelines." $cr }}
  {{ end }}
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "images/a.jpg" }}
  {{ $lightest := index (sort .Colors "Luminance" "desc") 0 }}
  {{ $darkest := index (sort .Colors "Luminance") 0 }}
  {{ $cr := div
    (add $lightest.Luminance 0.05)
    (add $darkest.Luminance 0.05)
  }}
  {{ if ge $cr 7.5 }}
    {{ printf "The %.2f contrast ratio conforms to WCAG Level AAA." $cr }}
  {{ else if ge $cr 4.5 }}
    {{ printf "The %.2f contrast ratio conforms to WCAG Level AA." $cr }}
  {{ else }}
    {{ printf "The %.2f contrast ratio does not conform to WCAG guidelines." $cr }}
  {{ end }}
{{ end }}
```
@z

@x
[WCAG]: https://en.wikipedia.org/wiki/Web_Content_Accessibility_Guidelines
[contrast ratio]: https://www.w3.org/TR/WCAG21/#dfn-contrast-ratio
[enhanced]: https://www.w3.org/WAI/WCAG22/quickref/?showtechniques=145#contrast-enhanced
[minimum]: https://www.w3.org/WAI/WCAG22/quickref/?showtechniques=145#contrast-minimum
@y
[WCAG]: https://en.wikipedia.org/wiki/Web_Content_Accessibility_Guidelines
[contrast ratio]: https://www.w3.org/TR/WCAG21/#dfn-contrast-ratio
[enhanced]: https://www.w3.org/WAI/WCAG22/quickref/?showtechniques=145#contrast-enhanced
[minimum]: https://www.w3.org/WAI/WCAG22/quickref/?showtechniques=145#contrast-minimum
@z
