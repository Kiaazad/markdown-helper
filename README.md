# markdown-helper
A simple autoit script that helps you style your text easier using markdown

### Intro
Websites like github and steemit lack proper editor options to format the text in their editor specially when it comes to markdown. After a while of typing every tag I got tired and wrote a simple AutoIt script to help me with formatting. Lately I got super interested in sharing my code with the world thanks to [utopian.io](https://utopian.io), therefore, I decided to modify it for ease of use and put it up on github. [here's the github link](https://github.com/Kiaazad/markdown-helper) if you're not reading this post in utopian.io.

### Different ways to run
- Download and run the `markdown-helper.exe` file. (no installation needed)
- Download and run the `markdown-helper.au3` after installing autoit.
- Download the `markdown-helper.au3` and compile your own .exe file after installing autoit.

### How to run from the script
You can download and install Autoit from [AutoIt website](https://www.autoitscript.com/site/autoit/downloads/) then download the `markdown-helper.au3`, open it in the editor and go to `tools > go` menu,  it will run the script.
![3.jpg](https://res.cloudinary.com/hpiynhbhq/image/upload/v1510865977/lurujnw8mhesuz3gx4cm.jpg)

### How to compile
Open it in the editor and go to `tools > compile` menu, it will generate an executable file in the same folder for you.
![2](https://user-images.githubusercontent.com/33455007/32934196-b0d488a8-cb80-11e7-84c1-1c869b98037c.jpg)

### How to use
After running the script, your `F1` button will be assigned to markdown-helper, you can select the portion of your text you want to format, press `F1` to activate the tool, press `F1` again to cycle through **bold**, *italic*, ***bold+italic***, and ~~strikethrough~~ then press `grave accent` key (right under the `esc` key) will apply the style.

As additional functions you can press `F1` to activate then press `1` to put the selected or copied text into a code block.
```
like this
```
Or you can press `F1` to activate then press two to center the selected or copied text or image in the screen using HTML tag `<center></center>`
<center>like this</center>
The other markdown tags like inline code, lists, header and quote don't need much of typing and effort therefore, I didn't include them. however, I'm open to suggestions if there's anything to add.
