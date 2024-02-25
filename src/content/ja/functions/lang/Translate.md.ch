%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: lang.Translate
description: Translates a string using the translation tables in the i18n directory.
categories: []
keywords: []
action:
  aliases: [T, i18n]
  related: []
  returnType: string
  signatures: ['lang.Translate KEY [CONTEXT]']
toc: true
aliases: [/functions/i18n]
---
@y
---
title: lang.Translate
description: Translates a string using the translation tables in the i18n directory.
categories: []
keywords: []
action:
  aliases: [T, i18n]
  related: []
  returnType: string
  signatures: ['lang.Translate KEY [CONTEXT]']
toc: true
aliases: [/functions/i18n]
---
@z

@x
The `lang.Translate` function returns the value associated with given key as defined in the translation table for the current language. 
@y
The `lang.Translate` function returns the value associated with given key as defined in the translation table for the current language. 
@z

@x
If the key is not found in the translation table for the current language, the `lang.Translate` function falls back to the translation table for the [`defaultContentLanguage`].
@y
If the key is not found in the translation table for the current language, the `lang.Translate` function falls back to the translation table for the [`defaultContentLanguage`].
@z

@x
[`defaultContentLanguage`]: /getting-started/configuration/#defaultcontentlanguage
@y
[`defaultContentLanguage`]: /getting-started/configuration/#defaultcontentlanguage
@z

@x
If the key is not found in the translation table for the `defaultContentLanguage`, the `lang.Translate` function returns an empty string.
@y
If the key is not found in the translation table for the `defaultContentLanguage`, the `lang.Translate` function returns an empty string.
@z

@x
{{% note %}}
To list missing and fallback translations, use the `--printI18nWarnings` flag when building your site.
@y
{{% note %}}
To list missing and fallback translations, use the `--printI18nWarnings` flag when building your site.
@z

@x
To render placeholders for missing and fallback translations, set 
[`enableMissingTranslationPlaceholders`] to `true` in your site configuration.
@y
To render placeholders for missing and fallback translations, set 
[`enableMissingTranslationPlaceholders`] to `true` in your site configuration.
@z

@x
[`enableMissingTranslationPlaceholders`]: /getting-started/configuration/#enablemissingtranslationplaceholders
{{% /note %}}
@y
[`enableMissingTranslationPlaceholders`]: /getting-started/configuration/#enablemissingtranslationplaceholders
{{% /note %}}
@z

@x
## Translation tables
@y
## Translation tables
@z

@x
Create translation tables in the i18n directory, naming each file according to [RFC 5646]. Translation tables may be JSON, TOML, or YAML. For example:
@y
Create translation tables in the i18n directory, naming each file according to [RFC 5646]. Translation tables may be JSON, TOML, or YAML. For example:
@z

@x
```text
i18n/en.toml
i18n/en-US.toml
```
@y
```text
i18n/en.toml
i18n/en-US.toml
```
@z

@x
The base name must match the language key as defined in your site configuration.
@y
The base name must match the language key as defined in your site configuration.
@z

@x
Artificial languages with private use subtags as defined in [RFC 5646 § 2.2.7] are also supported. You may omit the `art-x-` prefix for brevity. For example:
@y
Artificial languages with private use subtags as defined in [RFC 5646 § 2.2.7] are also supported. You may omit the `art-x-` prefix for brevity. For example:
@z

@x
```text
i18n/art-x-hugolang.toml
i18n/hugolang.toml
```
@y
```text
i18n/art-x-hugolang.toml
i18n/hugolang.toml
```
@z

@x
Private use subtags must not exceed 8 alphanumeric characters.
@y
Private use subtags must not exceed 8 alphanumeric characters.
@z

@x
[RFC 5646]: https://datatracker.ietf.org/doc/html/rfc5646
[RFC 5646 § 2.2.7]: https://datatracker.ietf.org/doc/html/rfc5646#section-2.2.7
@y
[RFC 5646]: https://datatracker.ietf.org/doc/html/rfc5646
[RFC 5646 § 2.2.7]: https://datatracker.ietf.org/doc/html/rfc5646#section-2.2.7
@z

@x
## Simple translations
@y
## Simple translations
@z

@x
Let's say your multilingual site supports two languages, English and Polish. Create a translation table for each language in the `i18n` directory.
@y
Let's say your multilingual site supports two languages, English and Polish. Create a translation table for each language in the `i18n` directory.
@z

@x
```text
i18n/
├── en.toml
└── pl.toml
```
@y
```text
i18n/
├── en.toml
└── pl.toml
```
@z

@x
The English translation table:
@y
The English translation table:
@z

@x
{{< code-toggle file=i18n/en >}}
privacy = 'privacy'
security = 'security'
{{< /code-toggle >}}
@y
{{< code-toggle file=i18n/en >}}
privacy = 'privacy'
security = 'security'
{{< /code-toggle >}}
@z

@x
The Polish translation table:
@y
The Polish translation table:
@z

@x
{{< code-toggle file=i18n/pl >}}
privacy = 'prywatność'
security = 'bezpieczeństwo'
{{< /code-toggle >}}
@y
{{< code-toggle file=i18n/pl >}}
privacy = 'prywatność'
security = 'bezpieczeństwo'
{{< /code-toggle >}}
@z

@x
{{% note %}}
The examples below use the `T` alias for brevity.
{{% /note %}}
@y
{{% note %}}
The examples below use the `T` alias for brevity.
{{% /note %}}
@z

@x
When viewing the English language site:
@y
When viewing the English language site:
@z

@x
```go-html-template
{{ T "privacy" }} → privacy
{{ T "security" }} → security
````
@y
```go-html-template
{{ T "privacy" }} → privacy
{{ T "security" }} → security
````
@z

@x
When viewing the Polish language site:
@y
When viewing the Polish language site:
@z

@x
```go-html-template
{{ T "privacy" }} → prywatność
{{ T "security" }} → bezpieczeństwo
```
@y
```go-html-template
{{ T "privacy" }} → prywatność
{{ T "security" }} → bezpieczeństwo
```
@z

@x
## Translations with pluralization
@y
## Translations with pluralization
@z

@x
Let's say your multilingual site supports two languages, English and Polish. Create a translation table for each language in the `i18n` directory.
@y
Let's say your multilingual site supports two languages, English and Polish. Create a translation table for each language in the `i18n` directory.
@z

@x
```text
i18n/
├── en.toml
└── pl.toml
```
@y
```text
i18n/
├── en.toml
└── pl.toml
```
@z

@x
The Unicode [CLDR Plural Rules chart] describes the pluralization categories for each language.
@y
The Unicode [CLDR Plural Rules chart] describes the pluralization categories for each language.
@z

@x
[CLDR Plural Rules chart]: https://www.unicode.org/cldr/charts/43/supplemental/language_plural_rules.html
@y
[CLDR Plural Rules chart]: https://www.unicode.org/cldr/charts/43/supplemental/language_plural_rules.html
@z

@x
The English translation table:
@y
The English translation table:
@z

@x
{{< code-toggle file=i18n/en >}}
[day]
one = 'day'
other = 'days'
@y
{{< code-toggle file=i18n/en >}}
[day]
one = 'day'
other = 'days'
@z

@x
[day_with_count]
one = '{{ . }} day'
other = '{{ . }} days'
{{< /code-toggle >}}
@y
[day_with_count]
one = '{{ . }} day'
other = '{{ . }} days'
{{< /code-toggle >}}
@z

@x
The Polish translation table:
@y
The Polish translation table:
@z

@x
{{< code-toggle file=i18n/pl >}}
[day]
one = 'miesiąc'
few = 'miesiące'
many = 'miesięcy'
other = 'miesiąca'
@y
{{< code-toggle file=i18n/pl >}}
[day]
one = 'miesiąc'
few = 'miesiące'
many = 'miesięcy'
other = 'miesiąca'
@z

@x
[day_with_count]
one = '{{ . }} miesiąc'
few = '{{ . }} miesiące'
many = '{{ . }} miesięcy'
other = '{{ . }} miesiąca'
{{< /code-toggle >}}
@y
[day_with_count]
one = '{{ . }} miesiąc'
few = '{{ . }} miesiące'
many = '{{ . }} miesięcy'
other = '{{ . }} miesiąca'
{{< /code-toggle >}}
@z

@x
{{% note %}}
The examples below use the `T` alias for brevity.
{{% /note %}}
@y
{{% note %}}
The examples below use the `T` alias for brevity.
{{% /note %}}
@z

@x
When viewing the English language site:
@y
When viewing the English language site:
@z

@x
```go-html-template
{{ T "day" 0 }} → days
{{ T "day" 1 }} → day
{{ T "day" 2 }} → days
{{ T "day" 5 }} → days
@y
```go-html-template
{{ T "day" 0 }} → days
{{ T "day" 1 }} → day
{{ T "day" 2 }} → days
{{ T "day" 5 }} → days
@z

@x
{{ T "day_with_count" 0 }} → 0 days
{{ T "day_with_count" 1 }} → 1 day
{{ T "day_with_count" 2 }} → 2 days
{{ T "day_with_count" 5 }} → 5 days
````
@y
{{ T "day_with_count" 0 }} → 0 days
{{ T "day_with_count" 1 }} → 1 day
{{ T "day_with_count" 2 }} → 2 days
{{ T "day_with_count" 5 }} → 5 days
````
@z

@x
When viewing the Polish language site:
@y
When viewing the Polish language site:
@z

@x
```go-html-template
{{ T "day" 0 }} → miesięcy
{{ T "day" 1 }} → miesiąc
{{ T "day" 2 }} → miesiące
{{ T "day" 5 }} → miesięcy
@y
```go-html-template
{{ T "day" 0 }} → miesięcy
{{ T "day" 1 }} → miesiąc
{{ T "day" 2 }} → miesiące
{{ T "day" 5 }} → miesięcy
@z

@x
{{ T "day_with_count" 0 }} → 0 miesięcy
{{ T "day_with_count" 1 }} → 1 miesiąc
{{ T "day_with_count" 2 }} → 2 miesiące
{{ T "day_with_count" 5 }} → 5 miesięcy
```
@y
{{ T "day_with_count" 0 }} → 0 miesięcy
{{ T "day_with_count" 1 }} → 1 miesiąc
{{ T "day_with_count" 2 }} → 2 miesiące
{{ T "day_with_count" 5 }} → 5 miesięcy
```
@z

@x
In the pluralization examples above, we passed an integer in context (the second argument). You can also pass a map in context, providing a `count` key to control pluralization.
@y
In the pluralization examples above, we passed an integer in context (the second argument). You can also pass a map in context, providing a `count` key to control pluralization.
@z

@x
Translation table:
@y
Translation table:
@z

@x
{{< code-toggle file=i18n/en >}}
[age]
one = '{{ .name }} is {{ .count }} year old.'
other = '{{ .name }} is {{ .count }} years old.'
{{< /code-toggle >}}
@y
{{< code-toggle file=i18n/en >}}
[age]
one = '{{ .name }} is {{ .count }} year old.'
other = '{{ .name }} is {{ .count }} years old.'
{{< /code-toggle >}}
@z

@x
Template code:
@y
Template code:
@z

@x
```go-html-template
{{ T "age" (dict "name" "Will" "count" 1) }} → Will is 1 year old.
{{ T "age" (dict "name" "John" "count" 3) }} → John is 3 years old.
```
@y
```go-html-template
{{ T "age" (dict "name" "Will" "count" 1) }} → Will is 1 year old.
{{ T "age" (dict "name" "John" "count" 3) }} → John is 3 years old.
```
@z

@x
{{% note %}}
Translation tables may contain both simple translations and translations with pluralization.
{{% /note %}}
@y
{{% note %}}
Translation tables may contain both simple translations and translations with pluralization.
{{% /note %}}
@z

@x
## Reserved keys
@y
## Reserved keys
@z

@x
Hugo uses the [go-i18n] package to look up values in translation tables. This package reserves the following keys for internal use:
@y
Hugo uses the [go-i18n] package to look up values in translation tables. This package reserves the following keys for internal use:
@z

@x
[go-i18n]: https://github.com/nicksnyder/go-i18n
@y
[go-i18n]: https://github.com/nicksnyder/go-i18n
@z

@x
id
: (`string`) Uniquely identifies the message.
@y
id
: (`string`) Uniquely identifies the message.
@z

@x
description
: (`string`) Describes the message to give additional context to translators that may be relevant for translation.
@y
description
: (`string`) Describes the message to give additional context to translators that may be relevant for translation.
@z

@x
hash
: (`string`) Uniquely identifies the content of the message that this message was translated from.
@y
hash
: (`string`) Uniquely identifies the content of the message that this message was translated from.
@z

@x
leftdelim
: (`string`) The left Go template delimiter.
@y
leftdelim
: (`string`) The left Go template delimiter.
@z

@x
rightdelim
: (`string`) The right Go template delimiter.
@y
rightdelim
: (`string`) The right Go template delimiter.
@z

@x
zero
: (`string`) The content of the message for the [CLDR] plural form "zero".
@y
zero
: (`string`) The content of the message for the [CLDR] plural form "zero".
@z

@x
one
: (`string`) The content of the message for the [CLDR] plural form "one".
@y
one
: (`string`) The content of the message for the [CLDR] plural form "one".
@z

@x
two
: (`string`) The content of the message for the [CLDR] plural form "two".
@y
two
: (`string`) The content of the message for the [CLDR] plural form "two".
@z

@x
few
: (`string`) The content of the message for the [CLDR] plural form "few".
@y
few
: (`string`) The content of the message for the [CLDR] plural form "few".
@z

@x
many
: (`string`) The content of the message for the [CLDR] plural form "many".
@y
many
: (`string`) The content of the message for the [CLDR] plural form "many".
@z

@x
other
: (`string`) The content of the message for the [CLDR] plural form "other".
@y
other
: (`string`) The content of the message for the [CLDR] plural form "other".
@z

@x
[CLDR]: https://www.unicode.org/cldr/charts/43/supplemental/language_plural_rules.html
@y
[CLDR]: https://www.unicode.org/cldr/charts/43/supplemental/language_plural_rules.html
@z

@x
If you need to provide a translation for one of the reserved keys, you can prepend the word with an underscore. For example:
@y
If you need to provide a translation for one of the reserved keys, you can prepend the word with an underscore. For example:
@z

@x
{{< code-toggle file=i18n/es >}}
_description = 'descripción'
_few = 'pocos'
_many = 'muchos'
_one = 'uno'
_other = 'otro'
_two = 'dos'
_zero = 'cero'
{{< /code-toggle >}}
@y
{{< code-toggle file=i18n/es >}}
_description = 'descripción'
_few = 'pocos'
_many = 'muchos'
_one = 'uno'
_other = 'otro'
_two = 'dos'
_zero = 'cero'
{{< /code-toggle >}}
@z

@x
Then in your templates:
@y
Then in your templates:
@z

@x
```go-html-template
{{ T "_description" }} → descripción
{{ T "_few" }} → pocos
{{ T "_many" }} → muchos
{{ T "_one" }} → uno
{{ T "_two" }} → dos
{{ T "_zero" }} → cero
{{ T "_other" }} → otro
```
@y
```go-html-template
{{ T "_description" }} → descripción
{{ T "_few" }} → pocos
{{ T "_many" }} → muchos
{{ T "_one" }} → uno
{{ T "_two" }} → dos
{{ T "_zero" }} → cero
{{ T "_other" }} → otro
```
@z
