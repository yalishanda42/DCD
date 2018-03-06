DCD - Cryptographic Tools.
=============================

This is the best freaking thing I have ever created using 16-bit assembly.

OVERVIEW:
[
 1. History
 2. Files
 3. How it works?
 4. What can improve it
 5. Software requirements
 6. Software used
 7. Contact me!
]
=============================

1. HISTORY
-----------------

It all started when I made a cypher prototype with carton. It was made of two circles - one bigger and one smaller - and each of them had 26 sectors containing the English alphabet letters. The smaller circle was attached on top of the bigger one so that the letters could be seen and that the circles could be rotated independently. The coding was based on the Ceasar code's principle - there is a number, which serves as a key, and the letters had their numbers, e.g. A=1, B=2,... Z=26. Then one moves the smaller circle as many sectors as the key is and voila! - the letter is changed to a different one. Decoding goes in reverse order.
I was very enthusiastic then, I wanted this to be useful! But at first, I couldn't do anything about it.
Later on, when I developed my programming skills and was learning languages "just to know them", I realized I could make a software based on this. I tried Visual Basic, but I was also fascinated by assembly back then. So, after watching the great videos in the youtube channel of 'khoraski', I had the skills to finally make something useful.
And this is how it all began.


2. FILES
------------

First of all, I want to tell you that this is open-source (I don't say) and you can change it however you'd like. But please, if you do something very important, be so kind to message me (see 7. Contact me!), I will be glad to hear what's done ^_^

So, them files:

ENCODER.COM - this is the encrypting tool, it encrypts the messages you type in it

DECODER.COM - this is the decoding tool, it decrypts the text you type in it

ENCODER.ASM - this is the script of encoder.com written in Assembly language

DECODER.ASM - as you may have guessed, this is the script of decoder.com

README.TXT -  this is what you're reading now :)


3. HOW IT WORKS?
----------------------------

It's pointless to use this software if you don't know what you're doing or why, as the first things you'll see when you open either the decoder or encoder say.

3.1. So, first of all, what does this software do?

If you haven't read 1.History, this features 2 tools used to encode and, respectively, decode words using the Ceasar cipher's principle. It uses the ASCII code of the letters typed to change them via the key in range [2-26] selected.

3.2. What shall I type in it to work?
 3.2.1. Key Selection Mode.

First of all, when you open either of the tools, you need to type the key. It MUST be two digits, typed consecutively, and the number they form must be within the range of [02-26]. However, you may want to type 00 or 01.
When you type in:
00 - Quits the program (the same as if you press Esc in Text Typing Mode)
01 - Normal Text, i.e. the text typed won't be coded and will be displayed without change.

After you type two digits, if they are not in the supported range you are still in this mode and must type two digits again. Only if you type something within the range of [01-26] you will be transferred to the next mode.

 3.2.2. Text Typing Mode.

When you have selected a key, you enter this mode. Here, the special thing is that when you type letters (either small or in capitals) they won't be displayed as they are, but an already coded equivalent of them will be shown instead. So, for example, you type in your text in the encoder and it is automatically converted into your code.

When you press a symbol other than a letter, it will be displayed is it is.

You want a new line? No problem, just press Enter.

You want to quit the program? Simply press ESC and it will quit safely.

OK, you'd say, but how do I return to the Key Selection Mode? By pressing TAB, you quit this mode and enter Key Selection Mode again. Then, everything must be familiar to you.

(Note:

Backspace doesn't directly erase symbols, but returns back 1 symbol instead. That is due to the fact that everything is performed in a console. All other rules of consoles exist here too.)

4. WHAT CAN IMPROVE IT?
---------------------------------------
Of course, many things can be done in order to improve the functionality or appearance of this software, e.g. adding prompts for better user experience, adding functionality such as saving code to files or even rewriting it in 32-bit assembly!
Also, symbols other than ASCII aren't supported for now. Other language coding can also be created or even Cyrillic support. I'm sorry, Chinese people, but Chinese characters can't be coded using this principle :( Hmm, unless you use pinyin...

If you feel like changing something or making something with this, please contact me, I can help you ^_^ (See 7. Contact me!)

5. SOFTWARE REQUIREMENTS
---------------------------------------------
Unfortunately, this was made on Windows XP and wasn't tested on any other OS. If you make a version of it runnable on other OS, please message me ;) (See 7. Contact me!)

6. SOFTWARE USED
-----------------------------
FASM
Windows Command Prompt
Notepad

7. CONTACT ME!
------------------------
I will be happy if I receive any feedback ^_^

e-mail: yalishanda@abv.bg

=============================
(c) 2014 Alexander Ignatov
DCD - Cryptographic Tools.
