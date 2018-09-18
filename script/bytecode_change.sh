#!/bin/bash

java com.ray.jvm.bytecode.Test
java -jar asmtools.jar jdis com/ray/jvm/bytecode/Test.class > Test.jsasm.1
awk 'NR==1,/iconst_1/{sub(/iconst_1/, "iconst_2")} 1' Test.jsasm.1 > Test.jasm   # change bytecode
java -jar asmtools.jar jasm Test.jasm
cp Test.class com/ray/jvm/bytecode/Test.class
java com.ray.jvm.bytecode.Test
