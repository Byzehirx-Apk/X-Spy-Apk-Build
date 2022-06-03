.class public Lgnu/bytecode/ListCodeSize;
.super Ljava/lang/Object;
.source "ListCodeSize.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ListCodeSize;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final main([Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "args":[Ljava/lang/String;
    move-object v7, v0

    array-length v7, v7

    if-nez v7, :cond_0

    .line 34
    invoke-static {}, Lgnu/bytecode/ListCodeSize;->usage()V

    .line 35
    :cond_0
    move-object v7, v0

    const/4 v8, 0x0

    aget-object v7, v7, v8

    move-object v1, v7

    .line 38
    .local v1, "filename":Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v1

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v7

    .line 40
    .local v2, "inp":Ljava/io/InputStream;
    new-instance v7, Lgnu/bytecode/ClassType;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Lgnu/bytecode/ClassType;-><init>()V

    move-object v3, v7

    .line 41
    .local v3, "ctype":Lgnu/bytecode/ClassType;
    new-instance v7, Lgnu/bytecode/ClassFileInput;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v3

    move-object v10, v2

    invoke-direct {v8, v9, v10}, Lgnu/bytecode/ClassFileInput;-><init>(Lgnu/bytecode/ClassType;Ljava/io/InputStream;)V

    .line 43
    move-object v7, v0

    array-length v7, v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 45
    move-object v7, v3

    invoke-virtual {v7}, Lgnu/bytecode/ClassType;->getMethods()Lgnu/bytecode/Method;

    move-result-object v7

    move-object v4, v7

    .local v4, "method":Lgnu/bytecode/Method;
    :goto_0
    move-object v7, v4

    if-eqz v7, :cond_1

    .line 48
    move-object v7, v4

    invoke-static {v7}, Lgnu/bytecode/ListCodeSize;->print(Lgnu/bytecode/Method;)V

    .line 46
    move-object v7, v4

    invoke-virtual {v7}, Lgnu/bytecode/Method;->getNext()Lgnu/bytecode/Method;

    move-result-object v7

    move-object v4, v7

    goto :goto_0

    .line 78
    .line 79
    .end local v2    # "inp":Ljava/io/InputStream;
    .end local v3    # "ctype":Lgnu/bytecode/ClassType;
    .end local v4    # "method":Lgnu/bytecode/Method;
    :cond_1
    :goto_1
    return-void

    .line 53
    .restart local v2    # "inp":Ljava/io/InputStream;
    .restart local v3    # "ctype":Lgnu/bytecode/ClassType;
    :cond_2
    const/4 v7, 0x1

    move v4, v7

    .local v4, "i":I
    :goto_2
    move v7, v4

    move-object v8, v0

    array-length v8, v8

    if-ge v7, v8, :cond_1

    .line 55
    move-object v7, v3

    invoke-virtual {v7}, Lgnu/bytecode/ClassType;->getMethods()Lgnu/bytecode/Method;

    move-result-object v7

    move-object v5, v7

    .local v5, "method":Lgnu/bytecode/Method;
    :goto_3
    move-object v7, v5

    if-eqz v7, :cond_4

    .line 58
    new-instance v7, Ljava/lang/StringBuffer;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    move-object v6, v7

    .line 59
    .local v6, "sbuf":Ljava/lang/StringBuffer;
    move-object v7, v6

    move-object v8, v5

    invoke-virtual {v8}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 60
    move-object v7, v5

    move-object v8, v6

    invoke-virtual {v7, v8}, Lgnu/bytecode/Method;->listParameters(Ljava/lang/StringBuffer;)V

    .line 61
    move-object v7, v6

    move-object v8, v5

    invoke-virtual {v8}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v8

    invoke-virtual {v8}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 62
    move-object v7, v6

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v0

    move v9, v4

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 63
    move-object v7, v5

    invoke-static {v7}, Lgnu/bytecode/ListCodeSize;->print(Lgnu/bytecode/Method;)V

    .line 56
    :cond_3
    move-object v7, v5

    invoke-virtual {v7}, Lgnu/bytecode/Method;->getNext()Lgnu/bytecode/Method;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    move-object v5, v7

    goto :goto_3

    .line 53
    .end local v6    # "sbuf":Ljava/lang/StringBuffer;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 68
    .end local v2    # "inp":Ljava/io/InputStream;
    .end local v3    # "ctype":Lgnu/bytecode/ClassType;
    .end local v4    # "i":I
    .end local v5    # "method":Lgnu/bytecode/Method;
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 70
    .local v2, "e":Ljava/io/FileNotFoundException;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "File "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " not found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    .line 78
    goto :goto_1

    .line 73
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v7

    move-object v2, v7

    .line 75
    .local v2, "e":Ljava/io/IOException;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 76
    move-object v7, v2

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 77
    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_1
.end method

.method static print(Lgnu/bytecode/Method;)V
    .locals 4

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "method":Lgnu/bytecode/Method;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 19
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/bytecode/Method;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v2

    move-object v1, v2

    .line 20
    .local v1, "code":Lgnu/bytecode/CodeAttr;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 21
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, ": no code"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 28
    :goto_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    .line 29
    return-void

    .line 24
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 25
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object v3, v1

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->getPC()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(I)V

    .line 26
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static usage()V
    .locals 2

    .prologue
    .line 12
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "Usage: class methodname ..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 13
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 14
    return-void
.end method
