%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x "New in" 日本語化
    <button class="bg-white hover:bg-gray-100 text-gray-800 font-semibold py-2 mr2 mt2 px-4 border border-gray-400 rounded shadow">
      <a href="{{ printf "https://github.com/gohugoio/hugo/releases/tag/v%s" $version }}">New in v{{ $version }}</a>
    </button>
@y
    <button class="bg-white hover:bg-gray-100 text-gray-800 font-semibold py-2 mr2 mt2 px-4 border border-gray-400 rounded shadow">
      <a href="{{ printf "https://github.com/gohugoio/hugo/releases/tag/v%s" $version }}">{{ T "NewIn1" }}v{{ $version }}{{ T "NewIn2" }}</a>
    </button>
@z
