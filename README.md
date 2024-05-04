<img width="1728" alt="Screenshot 2024-05-04 at 09 54 56" src="https://github.com/octavio-vercetti/ModularSwiftProject/assets/91890789/8ba8fb7e-4939-4ba8-9775-764f51263a65">

# How to modularize a project

Language: Swift

There are other ways* to do it but in many Xcode will throw either in previews or other areas.

So if you want to modularize the easy way, do this:

1. Create a project using Xcode GUI
2. Inside Xcode File > New > Package
3. Locate the file at the root of you’re project
4. Open Finder app and drag and drop the folder at the root of your Xcode Project Navigator
5. Open Target settings of you’re app and in the Frameworks, Libraries, and Embedded Content click plus icon to add this new package

Step 5 is the single link between you’re project and all it’s modules. The rest of packages will be linked to this main one as shown in [HelloWorld/Package.swift](https://github.com/octavio-vercetti/ModularSwiftProject/blob/main/HelloWorld/Package.swift)

Seams like a lot of work for something that we get by default in Typescript with imports, but remember this is a compiled language and not a transpiled/interpereted one.

The benefits that we win is that when you change a single part of your project only that part of the code will get recompiled, otherwise you'll face demoralizing wait time.

[* other ways](https://www.pointfree.co/episodes/ep171-modularization-part-1)
