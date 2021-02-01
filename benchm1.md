# M1 vs i7-1060NG7
## [Phoronix test](https://github.com/phoronix-test-suite/phoronix-test-suite) 
via `./phoronix-test-suite benchmark build-linux-kernel`

| Run	| Platforms	| Host arch 	| CPU/Alloc cores	| Host mem/Allow mem	| Compile Time (s)
| :---:	| :---		| :---		| :---			| :---			| :---				
| 1	| linux/amd64	| x86\_64	| i7-1060NG7/4		| 16GB/2GB		| 448
| 2	| linux/amd64	| x86\_64	| i7-1060NG7/4		| 16GB/2GB		| 438
| 3	| linux/amd64	| x86\_64	| i7-1060NG7/4		| 16GB/2GB		| 437
| 1	| linux/amd64	| aarch64	| M1/4			| 16GB/2GB		| 1830
| 2	| linux/amd64	| aarch64	| M1/4			| 16GB/2GB		| 1909
| 3	| linux/amd64	| aarch64	| M1/4			| 16GB/2GB		| 1984
| 1	| linux/arm64	| aarch64	| M1/4			| 16GB/2GB		| 423
| 2	| linux/arm64	| aarch64	| M1/4			| 16GB/2GB		| 426
| 3	| linux/arm64	| aarch64	| M1/4			| 16GB/2GB		| 440
