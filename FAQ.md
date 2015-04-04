# Introduction #

The aim of this page is to provide some information about this project in an FAQ way.


# Questions #

**Why does Free Pascal requires another binding for the Xlib library ?
> The Free Pascal Compiler (FPC) project has bindings for the Xlib library, however the project does not contain support for the entire API, only fractions of it.
> This project attempts to provide the bindings of Xlib that does not exists yet at the FPC project.**

**Are you going to support also the XCB API ?
> The short answer is yes. The long answer is that I'm not going to do it right away, because:
    * I do not have time to work on two bindings at the same time.
    * The API of XCB will be changed from time to time, so I'm waiting for it to become more stable and commonly used, so the work will be easier, and the API will be more stable and as much as unchanged as possible.**

**What is the license of the project ?
> The license of the project is actually dual license:
    * X.Org license - It is the original license of Xlib, however it was revoked, so I'm using a close license as well.
    * BSD license - It replaces the X.Org license, while keep the same idea of the original license.**

**Can I help you in binding Xlib and/or XCB to Pascal ?
> Yes, thank you very much for the offer.**

**Can you create a support for other Pascal compilers ?
> I'm using FPC as my Pascal compiler. If you wish to add support for additional (and not instead of) Pascal compiler, please provide me with your patches and I'll add the support to your compiler as well.**
