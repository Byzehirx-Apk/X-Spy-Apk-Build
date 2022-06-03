.class public Lgnu/bytecode/dump;
.super Lgnu/bytecode/ClassFileInput;
.source "dump.java"


# instance fields
.field writer:Lgnu/bytecode/ClassTypeWriter;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lgnu/bytecode/ClassTypeWriter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassFormatError;
        }
    .end annotation

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/dump;
    move-object v1, p1

    .local v1, "str":Ljava/io/InputStream;
    move-object v2, p2

    .local v2, "writer":Lgnu/bytecode/ClassTypeWriter;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lgnu/bytecode/ClassFileInput;-><init>(Ljava/io/InputStream;)V

    .line 35
    move-object v3, v0

    new-instance v4, Lgnu/bytecode/ClassType;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lgnu/bytecode/ClassType;-><init>()V

    iput-object v4, v3, Lgnu/bytecode/dump;->ctype:Lgnu/bytecode/ClassType;

    .line 36
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/dump;->readFormatVersion()V

    .line 38
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/dump;->readConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v3

    .line 39
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/dump;->readClassInfo()V

    .line 40
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/dump;->readFields()V

    .line 41
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/dump;->readMethods()V

    .line 42
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/dump;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {v3, v4}, Lgnu/bytecode/dump;->readAttributes(Lgnu/bytecode/AttrContainer;)I

    move-result v3

    .line 44
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/dump;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Lgnu/bytecode/ClassType;)V

    .line 45
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/bytecode/ClassTypeWriter;->flush()V

    .line 46
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 19

    .prologue
    .line 153
    move-object/from16 v0, p0

    .local v0, "args":[Ljava/lang/String;
    move-object v13, v0

    array-length v13, v13

    move v1, v13

    .line 154
    .local v1, "alen":I
    new-instance v13, Lgnu/bytecode/ClassTypeWriter;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x0

    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v17}, Lgnu/bytecode/ClassTypeWriter;-><init>(Lgnu/bytecode/ClassType;Ljava/io/OutputStream;I)V

    move-object v2, v13

    .line 155
    .local v2, "out":Lgnu/bytecode/ClassTypeWriter;
    move v13, v1

    if-nez v13, :cond_0

    .line 156
    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v13}, Lgnu/bytecode/dump;->usage(Ljava/io/PrintStream;)V

    .line 157
    :cond_0
    const/4 v13, 0x0

    move v3, v13

    .local v3, "i":I
    :goto_0
    move v13, v3

    move v14, v1

    if-ge v13, v14, :cond_a

    .line 159
    move-object v13, v0

    move v14, v3

    aget-object v13, v13, v14

    move-object v4, v13

    .line 160
    .local v4, "filename":Ljava/lang/String;
    move-object v13, v4

    const-string/jumbo v14, "-verbose"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    move-object v13, v4

    const-string/jumbo v14, "--verbose"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 162
    :cond_1
    move-object v13, v2

    const/16 v14, 0xf

    invoke-virtual {v13, v14}, Lgnu/bytecode/ClassTypeWriter;->setFlags(I)V

    .line 163
    .line 157
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 165
    :cond_2
    move-object v13, v4

    invoke-static {v13}, Lgnu/bytecode/dump;->uriSchemeSpecified(Ljava/lang/String;)Z

    move-result v13

    move v5, v13

    .line 169
    .local v5, "isURL":Z
    move v13, v5

    if-eqz v13, :cond_9

    .line 171
    move-object v13, v4

    :try_start_0
    const-string/jumbo v14, "jar:"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    move v7, v13

    .line 172
    .local v7, "isJarURL":Z
    move v13, v7

    if-eqz v13, :cond_4

    .line 174
    move-object v13, v4

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    move-object v8, v13

    .line 176
    .local v8, "part":Ljava/lang/String;
    move-object v13, v8

    invoke-static {v13}, Lgnu/bytecode/dump;->uriSchemeSpecified(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 178
    move-object v13, v8

    const/16 v14, 0x21

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    move v9, v13

    .line 179
    .local v9, "excl":I
    move v13, v9

    if-ltz v13, :cond_3

    .line 181
    move-object v13, v8

    const/4 v14, 0x0

    move v15, v9

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    .line 183
    .local v10, "filepart":Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v10

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v13

    invoke-virtual {v13}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v13

    invoke-virtual {v13}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    .line 187
    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "jar:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v10

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v8

    move v15, v9

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v4, v13

    .line 191
    .end local v9    # "excl":I
    .end local v10    # "filepart":Ljava/lang/String;
    :cond_3
    move-object v13, v8

    const-string/jumbo v14, "!/"

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-gez v13, :cond_4

    .line 193
    move-object v13, v4

    const/16 v14, 0x21

    invoke-virtual {v13, v14}, Ljava/lang/String;->lastIndexOf(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8

    move-result v13

    move v9, v13

    .line 194
    .restart local v9    # "excl":I
    move v13, v9

    if-gtz v13, :cond_5

    .line 195
    const/4 v13, 0x0

    move v7, v13

    .line 207
    .end local v8    # "part":Ljava/lang/String;
    .end local v9    # "excl":I
    :cond_4
    :goto_2
    :try_start_1
    new-instance v13, Ljava/net/URL;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v4

    invoke-direct {v14, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/zip/ZipException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    move-object v8, v13

    .line 210
    .local v8, "url":Ljava/net/URL;
    move-object v13, v8

    :try_start_2
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    invoke-virtual {v13}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/util/zip/ZipException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    move-result-object v13

    move-object v6, v13

    .line 233
    .line 253
    .line 254
    .line 302
    .end local v7    # "isJarURL":Z
    .end local v8    # "url":Ljava/net/URL;
    .local v6, "in":Ljava/io/InputStream;
    :goto_3
    move-object v13, v6

    move-object v14, v4

    move-object v15, v2

    :try_start_3
    invoke-static {v13, v14, v15}, Lgnu/bytecode/dump;->process(Ljava/io/InputStream;Ljava/lang/String;Lgnu/bytecode/ClassTypeWriter;)V

    .line 311
    goto/16 :goto_1

    .line 196
    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v7    # "isJarURL":Z
    .local v8, "part":Ljava/lang/String;
    .restart local v9    # "excl":I
    :cond_5
    move-object v13, v4

    const/16 v14, 0x2f

    move v15, v9

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    if-gez v13, :cond_4

    .line 198
    move-object v13, v4

    move v14, v9

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    move-object v8, v13

    .line 199
    move-object v13, v8

    const/16 v14, 0x2e

    const/16 v15, 0x2f

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v13

    move-object v8, v13

    .line 200
    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v4

    const/4 v15, 0x0

    move/from16 v16, v9

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x2f

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v8

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ".class"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    move-result-object v13

    move-object v4, v13

    goto :goto_2

    .line 212
    .end local v9    # "excl":I
    .local v8, "url":Ljava/net/URL;
    :catch_0
    move-exception v13

    move-object v9, v13

    .line 214
    .local v9, "e1":Ljava/util/zip/ZipException;
    move v13, v7

    if-eqz v13, :cond_7

    .line 216
    move-object v13, v8

    :try_start_4
    invoke-virtual {v13}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    .line 217
    .restart local v10    # "filepart":Ljava/lang/String;
    move-object v13, v10

    const/16 v14, 0x21

    invoke-virtual {v13, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    move v11, v13

    .line 218
    .local v11, "sl":I
    move v13, v11

    if-lez v13, :cond_6

    .line 219
    move-object v13, v10

    const/4 v14, 0x0

    move v15, v11

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/util/zip/ZipException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    move-result-object v13

    move-object v10, v13

    .line 222
    :cond_6
    :try_start_5
    new-instance v13, Ljava/net/URL;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v10

    invoke-direct {v14, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    invoke-virtual {v13}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/util/zip/ZipException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    move-result-object v13

    .line 230
    .line 232
    .end local v10    # "filepart":Ljava/lang/String;
    .end local v11    # "sl":I
    :cond_7
    :goto_4
    move-object v13, v9

    :try_start_6
    throw v13
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/util/zip/ZipException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 235
    .end local v8    # "url":Ljava/net/URL;
    .end local v9    # "e1":Ljava/util/zip/ZipException;
    :catch_1
    move-exception v13

    move-object v8, v13

    .line 237
    .local v8, "e1":Ljava/io/FileNotFoundException;
    :try_start_7
    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v14, "File for URL "

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 238
    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object v14, v4

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 239
    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v14, " not found."

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 240
    const/4 v13, -0x1

    invoke-static {v13}, Ljava/lang/System;->exit(I)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 241
    const/4 v13, 0x0

    move-object v6, v13

    .line 253
    .restart local v6    # "in":Ljava/io/InputStream;
    goto/16 :goto_3

    .line 224
    .end local v6    # "in":Ljava/io/InputStream;
    .local v8, "url":Ljava/net/URL;
    .restart local v9    # "e1":Ljava/util/zip/ZipException;
    .restart local v10    # "filepart":Ljava/lang/String;
    .restart local v11    # "sl":I
    :catch_2
    move-exception v13

    move-object v12, v13

    .line 226
    .local v12, "e2":Ljava/io/FileNotFoundException;
    :try_start_8
    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v14, "Jar File for URL "

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 227
    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object v14, v10

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 228
    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v14, " not found."

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 229
    const/4 v13, -0x1

    invoke-static {v13}, Ljava/lang/System;->exit(I)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/util/zip/ZipException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_4

    .line 243
    .end local v8    # "url":Ljava/net/URL;
    .end local v9    # "e1":Ljava/util/zip/ZipException;
    .end local v10    # "filepart":Ljava/lang/String;
    .end local v11    # "sl":I
    .end local v12    # "e2":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v13

    move-object v8, v13

    .line 245
    .local v8, "e1":Ljava/util/zip/ZipException;
    :try_start_9
    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v14, "Error opening zip archive "

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 246
    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object v14, v4

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 247
    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v14, " not found."

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 248
    move-object v13, v8

    invoke-virtual {v13}, Ljava/util/zip/ZipException;->printStackTrace()V

    .line 249
    move-object v13, v8

    invoke-virtual {v13}, Ljava/util/zip/ZipException;->getCause()Ljava/lang/Throwable;

    move-result-object v13

    if-eqz v13, :cond_8

    .line 250
    move-object v13, v8

    invoke-virtual {v13}, Ljava/util/zip/ZipException;->getCause()Ljava/lang/Throwable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V

    .line 251
    :cond_8
    const/4 v13, -0x1

    invoke-static {v13}, Ljava/lang/System;->exit(I)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 252
    const/4 v13, 0x0

    move-object v6, v13

    .restart local v6    # "in":Ljava/io/InputStream;
    goto/16 :goto_3

    .line 259
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v7    # "isJarURL":Z
    .end local v8    # "e1":Ljava/util/zip/ZipException;
    :cond_9
    :try_start_a
    new-instance v13, Ljava/io/FileInputStream;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v4

    invoke-direct {v14, v15}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    move-object v6, v13

    .line 300
    .restart local v6    # "in":Ljava/io/InputStream;
    goto/16 :goto_3

    .line 261
    .end local v6    # "in":Ljava/io/InputStream;
    :catch_4
    move-exception v13

    move-object v7, v13

    .line 267
    .local v7, "e1":Ljava/io/FileNotFoundException;
    move-object v13, v4

    :try_start_b
    invoke-static {v13}, Lgnu/bytecode/ObjectType;->getContextClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    move-object v9, v13

    .line 268
    .local v9, "clas":Ljava/lang/Class;
    move-object v13, v9

    invoke-virtual {v13}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_b
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    move-result-object v13

    move-object v8, v13

    .line 282
    .line 284
    .end local v9    # "clas":Ljava/lang/Class;
    .local v8, "loader":Ljava/lang/ClassLoader;
    :goto_5
    :try_start_c
    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v4

    const/16 v15, 0x2e

    const/16 v16, 0x2f

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ".class"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    move-result-object v13

    move-object v9, v13

    .line 287
    .local v9, "clfilename":Ljava/lang/String;
    move-object v13, v8

    move-object v14, v9

    :try_start_d
    invoke-virtual {v13, v14}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v13

    move-object v10, v13

    .line 288
    .local v10, "resource":Ljava/net/URL;
    move-object v13, v10

    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    invoke-virtual {v13}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    move-object v6, v13

    .line 289
    .restart local v6    # "in":Ljava/io/InputStream;
    move-object v13, v10

    invoke-virtual {v13}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    move-result-object v13

    move-object v4, v13

    .line 299
    goto/16 :goto_3

    .line 270
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v8    # "loader":Ljava/lang/ClassLoader;
    .end local v9    # "clfilename":Ljava/lang/String;
    .end local v10    # "resource":Ljava/net/URL;
    :catch_5
    move-exception v13

    move-object v9, v13

    .line 272
    .local v9, "e2":Ljava/lang/NoClassDefFoundError;
    :try_start_e
    invoke-static {}, Lgnu/bytecode/ObjectType;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    move-object v8, v13

    .line 282
    .restart local v8    # "loader":Ljava/lang/ClassLoader;
    goto :goto_5

    .line 274
    .end local v8    # "loader":Ljava/lang/ClassLoader;
    .end local v9    # "e2":Ljava/lang/NoClassDefFoundError;
    :catch_6
    move-exception v13

    move-object v9, v13

    .line 276
    .local v9, "e2":Ljava/lang/Throwable;
    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v14, "File "

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 277
    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object v14, v4

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 278
    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v14, " not found."

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 279
    const/4 v13, -0x1

    invoke-static {v13}, Ljava/lang/System;->exit(I)V

    .line 280
    const/4 v13, 0x0

    move-object v8, v13

    .line 281
    .restart local v8    # "loader":Ljava/lang/ClassLoader;
    const/4 v13, 0x0

    move-object v6, v13

    goto :goto_5

    .line 291
    .local v9, "clfilename":Ljava/lang/String;
    :catch_7
    move-exception v13

    move-object v10, v13

    .line 293
    .local v10, "ex":Ljava/lang/Throwable;
    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v14, "Can\'t find .class file for class "

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 294
    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object v14, v4

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 295
    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v14, " - "

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 296
    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object v14, v10

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 297
    const/4 v13, -0x1

    invoke-static {v13}, Ljava/lang/System;->exit(I)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    .line 298
    const/4 v13, 0x0

    move-object v6, v13

    .restart local v6    # "in":Ljava/io/InputStream;
    goto/16 :goto_3

    .line 305
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v7    # "e1":Ljava/io/FileNotFoundException;
    .end local v8    # "loader":Ljava/lang/ClassLoader;
    .end local v9    # "clfilename":Ljava/lang/String;
    .end local v10    # "ex":Ljava/lang/Throwable;
    :catch_8
    move-exception v13

    move-object v7, v13

    .line 307
    .local v7, "e":Ljava/io/IOException;
    move-object v13, v7

    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    .line 308
    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v14, "caught "

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 309
    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object v14, v7

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 310
    const/4 v13, -0x1

    invoke-static {v13}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_1

    .line 313
    .end local v4    # "filename":Ljava/lang/String;
    .end local v5    # "isURL":Z
    .end local v7    # "e":Ljava/io/IOException;
    :cond_a
    return-void
.end method

.method public static process(Ljava/io/InputStream;Ljava/lang/String;Lgnu/bytecode/ClassTypeWriter;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "in":Ljava/io/InputStream;
    move-object v1, p1

    .local v1, "filename":Ljava/lang/String;
    move-object v2, p2

    .local v2, "out":Lgnu/bytecode/ClassTypeWriter;
    new-instance v8, Ljava/io/BufferedInputStream;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v8

    .line 92
    .local v3, "inp":Ljava/io/InputStream;
    move-object v8, v3

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/io/InputStream;->mark(I)V

    .line 93
    move-object v8, v3

    invoke-static {v8}, Lgnu/bytecode/dump;->readMagic(Ljava/io/InputStream;)I

    move-result v8

    move v4, v8

    .line 94
    .local v4, "magic":I
    move v8, v4

    const v9, -0x35014542    # -8346975.0f

    if-ne v8, v9, :cond_0

    .line 96
    move-object v8, v2

    const-string/jumbo v9, "Reading .class from "

    invoke-virtual {v8, v9}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 97
    move-object v8, v2

    move-object v9, v1

    invoke-virtual {v8, v9}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 98
    move-object v8, v2

    const/16 v9, 0x2e

    invoke-virtual {v8, v9}, Lgnu/bytecode/ClassTypeWriter;->println(C)V

    .line 99
    new-instance v8, Lgnu/bytecode/dump;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v3

    move-object v11, v2

    invoke-direct {v9, v10, v11}, Lgnu/bytecode/dump;-><init>(Ljava/io/InputStream;Lgnu/bytecode/ClassTypeWriter;)V

    .line 144
    :goto_0
    return-void

    .line 101
    :cond_0
    move v8, v4

    const v9, 0x504b0304

    if-ne v8, v9, :cond_4

    .line 103
    move-object v8, v3

    invoke-virtual {v8}, Ljava/io/InputStream;->reset()V

    .line 104
    move-object v8, v2

    const-string/jumbo v9, "Reading classes from archive "

    invoke-virtual {v8, v9}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 105
    move-object v8, v2

    move-object v9, v1

    invoke-virtual {v8, v9}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 106
    move-object v8, v2

    const/16 v9, 0x2e

    invoke-virtual {v8, v9}, Lgnu/bytecode/ClassTypeWriter;->println(C)V

    .line 107
    new-instance v8, Ljava/util/zip/ZipInputStream;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v3

    invoke-direct {v9, v10}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v5, v8

    .line 109
    .local v5, "zin":Ljava/util/zip/ZipInputStream;
    :goto_1
    move-object v8, v5

    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v8

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v6, v9

    .local v6, "zent":Ljava/util/zip/ZipEntry;
    if-eqz v8, :cond_3

    .line 111
    move-object v8, v6

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 112
    .local v7, "name":Ljava/lang/String;
    move-object v8, v6

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 114
    move-object v8, v2

    const-string/jumbo v9, "Archive directory: "

    invoke-virtual {v8, v9}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 115
    move-object v8, v2

    move-object v9, v7

    invoke-virtual {v8, v9}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 116
    move-object v8, v2

    const/16 v9, 0x2e

    invoke-virtual {v8, v9}, Lgnu/bytecode/ClassTypeWriter;->println(C)V

    .line 136
    :goto_2
    goto :goto_1

    .line 120
    :cond_1
    move-object v8, v2

    invoke-virtual {v8}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 121
    move-object v8, v5

    invoke-static {v8}, Lgnu/bytecode/dump;->readMagic(Ljava/io/InputStream;)I

    move-result v8

    move v4, v8

    .line 122
    move v8, v4

    const v9, -0x35014542    # -8346975.0f

    if-ne v8, v9, :cond_2

    .line 124
    move-object v8, v2

    const-string/jumbo v9, "Reading class member: "

    invoke-virtual {v8, v9}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 125
    move-object v8, v2

    move-object v9, v7

    invoke-virtual {v8, v9}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 126
    move-object v8, v2

    const/16 v9, 0x2e

    invoke-virtual {v8, v9}, Lgnu/bytecode/ClassTypeWriter;->println(C)V

    .line 127
    new-instance v8, Lgnu/bytecode/dump;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v5

    move-object v11, v2

    invoke-direct {v9, v10, v11}, Lgnu/bytecode/dump;-><init>(Ljava/io/InputStream;Lgnu/bytecode/ClassTypeWriter;)V

    goto :goto_2

    .line 131
    :cond_2
    move-object v8, v2

    const-string/jumbo v9, "Skipping non-class member: "

    invoke-virtual {v8, v9}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 132
    move-object v8, v2

    move-object v9, v7

    invoke-virtual {v8, v9}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 133
    move-object v8, v2

    const/16 v9, 0x2e

    invoke-virtual {v8, v9}, Lgnu/bytecode/ClassTypeWriter;->println(C)V

    goto :goto_2

    .line 137
    .end local v7    # "name":Ljava/lang/String;
    :cond_3
    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/System;->exit(I)V

    .line 138
    goto/16 :goto_0

    .line 141
    .end local v5    # "zin":Ljava/util/zip/ZipInputStream;
    .end local v6    # "zent":Ljava/util/zip/ZipEntry;
    :cond_4
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "File "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " is not a valid .class file"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 142
    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_0
.end method

.method public static process(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/OutputStream;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "in":Ljava/io/InputStream;
    move-object v1, p1

    .local v1, "filename":Ljava/lang/String;
    move-object v2, p2

    .local v2, "out":Ljava/io/OutputStream;
    move v3, p3

    .local v3, "flags":I
    move-object v4, v0

    move-object v5, v1

    new-instance v6, Lgnu/bytecode/ClassTypeWriter;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    move-object v9, v2

    move v10, v3

    invoke-direct {v7, v8, v9, v10}, Lgnu/bytecode/ClassTypeWriter;-><init>(Lgnu/bytecode/ClassType;Ljava/io/OutputStream;I)V

    invoke-static {v4, v5, v6}, Lgnu/bytecode/dump;->process(Ljava/io/InputStream;Ljava/lang/String;Lgnu/bytecode/ClassTypeWriter;)V

    .line 78
    return-void
.end method

.method public static process(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/Writer;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "in":Ljava/io/InputStream;
    move-object v1, p1

    .local v1, "filename":Ljava/lang/String;
    move-object v2, p2

    .local v2, "out":Ljava/io/Writer;
    move v3, p3

    .local v3, "flags":I
    move-object v4, v0

    move-object v5, v1

    new-instance v6, Lgnu/bytecode/ClassTypeWriter;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    move-object v9, v2

    move v10, v3

    invoke-direct {v7, v8, v9, v10}, Lgnu/bytecode/ClassTypeWriter;-><init>(Lgnu/bytecode/ClassType;Ljava/io/Writer;I)V

    invoke-static {v4, v5, v6}, Lgnu/bytecode/dump;->process(Ljava/io/InputStream;Ljava/lang/String;Lgnu/bytecode/ClassTypeWriter;)V

    .line 85
    return-void
.end method

.method static readMagic(Ljava/io/InputStream;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "in":Ljava/io/InputStream;
    const/4 v4, 0x0

    move v1, v4

    .line 63
    .local v1, "magic":I
    const/4 v4, 0x0

    move v2, v4

    .local v2, "j":I
    :goto_0
    move v4, v2

    const/4 v5, 0x4

    if-ge v4, v5, :cond_0

    .line 65
    move-object v4, v0

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    move v3, v4

    .line 66
    .local v3, "b":I
    move v4, v3

    if-gez v4, :cond_1

    .line 67
    .line 70
    .end local v3    # "b":I
    :cond_0
    move v4, v1

    move v0, v4

    .end local v0    # "in":Ljava/io/InputStream;
    return v0

    .line 68
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local v3    # "b":I
    :cond_1
    move v4, v1

    const/16 v5, 0x8

    shl-int/lit8 v4, v4, 0x8

    move v5, v3

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    move v1, v4

    .line 63
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static uriSchemeLength(Ljava/lang/String;)I
    .locals 6

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "uri":Ljava/lang/String;
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move v1, v4

    .line 326
    .local v1, "len":I
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_4

    .line 328
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v3, v4

    .line 329
    .local v3, "ch":C
    move v4, v3

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_0

    .line 330
    move v4, v2

    move v0, v4

    .line 336
    .end local v0    # "uri":Ljava/lang/String;
    .end local v3    # "ch":C
    :goto_1
    return v0

    .line 331
    .restart local v0    # "uri":Ljava/lang/String;
    .restart local v3    # "ch":C
    :cond_0
    move v4, v2

    if-nez v4, :cond_2

    move v4, v3

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_3

    .line 334
    :cond_1
    const/4 v4, -0x1

    move v0, v4

    goto :goto_1

    .line 331
    :cond_2
    move v4, v3

    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v3

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_3

    move v4, v3

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_3

    move v4, v3

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_1

    .line 326
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 336
    .end local v3    # "ch":C
    :cond_4
    const/4 v4, -0x1

    move v0, v4

    goto :goto_1
.end method

.method static uriSchemeSpecified(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v3, v0

    invoke-static {v3}, Lgnu/bytecode/dump;->uriSchemeLength(Ljava/lang/String;)I

    move-result v3

    move v1, v3

    .line 349
    .local v1, "ulen":I
    move v3, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    sget-char v3, Ljava/io/File;->separatorChar:C

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_3

    .line 351
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v2, v3

    .line 352
    .local v2, "drive":C
    move v3, v2

    const/16 v4, 0x61

    if-lt v3, v4, :cond_0

    move v3, v2

    const/16 v4, 0x7a

    if-le v3, v4, :cond_2

    :cond_0
    move v3, v2

    const/16 v4, 0x41

    if-lt v3, v4, :cond_1

    move v3, v2

    const/16 v4, 0x5a

    if-le v3, v4, :cond_2

    :cond_1
    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .line 355
    .end local v0    # "name":Ljava/lang/String;
    .end local v2    # "drive":C
    :goto_1
    return v0

    .line 352
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v2    # "drive":C
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 355
    .end local v2    # "drive":C
    :cond_3
    move v3, v1

    if-lez v3, :cond_4

    const/4 v3, 0x1

    :goto_2
    move v0, v3

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public static usage(Ljava/io/PrintStream;)V
    .locals 3

    .prologue
    .line 360
    move-object v0, p0

    .local v0, "err":Ljava/io/PrintStream;
    move-object v1, v0

    const-string/jumbo v2, "Prints and dis-assembles the contents of JVM .class files."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 361
    move-object v1, v0

    const-string/jumbo v2, "Usage: [--verbose] class-or-jar ..."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 362
    move-object v1, v0

    const-string/jumbo v2, "where a class-or-jar can be one of:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 363
    move-object v1, v0

    const-string/jumbo v2, "- a fully-qualified class name; or"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 364
    move-object v1, v0

    const-string/jumbo v2, "- the name of a .class file, or a URL reference to one; or"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 365
    move-object v1, v0

    const-string/jumbo v2, "- the name of a .jar or .zip archive file, or a URL reference to one."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 366
    move-object v1, v0

    const-string/jumbo v2, "If a .jar/.zip archive is named, all its.class file members are printed."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 367
    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    .line 368
    move-object v1, v0

    const-string/jumbo v2, "You can name a single .class member of an archive with a jar: URL,"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 369
    move-object v1, v0

    const-string/jumbo v2, "which looks like: jar:jar-spec!/p1/p2/cl.class"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 370
    move-object v1, v0

    const-string/jumbo v2, "The jar-spec can be a URL or the name of the .jar file."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 371
    move-object v1, v0

    const-string/jumbo v2, "You can also use the shorthand syntax: jar:jar-spec!p1.p2.cl"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 372
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 373
    return-void
.end method


# virtual methods
.method public readAttribute(Ljava/lang/String;ILgnu/bytecode/AttrContainer;)Lgnu/bytecode/Attribute;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/dump;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "length":I
    move-object v3, p3

    .local v3, "container":Lgnu/bytecode/AttrContainer;
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/bytecode/ClassFileInput;->readAttribute(Ljava/lang/String;ILgnu/bytecode/AttrContainer;)Lgnu/bytecode/Attribute;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/bytecode/dump;
    return-object v0
.end method

.method public readConstants()Lgnu/bytecode/ConstantPool;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/dump;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/dump;->ctype:Lgnu/bytecode/ClassType;

    move-object v2, v0

    invoke-super {v2}, Lgnu/bytecode/ClassFileInput;->readConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v2

    iput-object v2, v1, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    .line 51
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/dump;->ctype:Lgnu/bytecode/ClassType;

    iget-object v1, v1, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/dump;
    return-object v0
.end method
