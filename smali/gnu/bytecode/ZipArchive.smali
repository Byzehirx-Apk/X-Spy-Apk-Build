.class public Lgnu/bytecode/ZipArchive;
.super Ljava/lang/Object;
.source "ZipArchive.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ZipArchive;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "in":Ljava/io/InputStream;
    move-object v1, p1

    .local v1, "out":Ljava/io/OutputStream;
    move-object v2, p2

    .local v2, "buffer":[B
    const-wide/16 v6, 0x0

    move-wide v3, v6

    .line 28
    .local v3, "total":J
    :goto_0
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/io/InputStream;->read([B)I

    move-result v6

    move v5, v6

    .line 29
    .local v5, "count":I
    move v6, v5

    if-gtz v6, :cond_0

    .line 30
    move-wide v6, v3

    move-wide v0, v6

    .end local v0    # "in":Ljava/io/InputStream;
    return-wide v0

    .line 31
    .restart local v0    # "in":Ljava/io/InputStream;
    :cond_0
    move-object v6, v1

    move-object v7, v2

    const/4 v8, 0x0

    move v9, v5

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/OutputStream;->write([BII)V

    .line 32
    move-wide v6, v3

    move v8, v5

    int-to-long v8, v8

    add-long/2addr v6, v8

    move-wide v3, v6

    .line 33
    goto :goto_0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/lang/String;[B)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "in":Ljava/io/InputStream;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "buffer":[B
    new-instance v6, Ljava/io/File;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v1

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v6

    .line 40
    .local v3, "f":Ljava/io/File;
    move-object v6, v3

    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 41
    .local v4, "dir_name":Ljava/lang/String;
    move-object v6, v4

    if-eqz v6, :cond_0

    .line 43
    new-instance v6, Ljava/io/File;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v4

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    .line 44
    .local v5, "dir":Ljava/io/File;
    move-object v6, v5

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 45
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mkdirs:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v5

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 47
    .end local v5    # "dir":Ljava/io/File;
    :cond_0
    move-object v6, v1

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2f

    if-eq v6, v7, :cond_1

    .line 49
    new-instance v6, Ljava/io/BufferedOutputStream;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/io/FileOutputStream;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v3

    invoke-direct {v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v5, v6

    .line 50
    .local v5, "out":Ljava/io/OutputStream;
    move-object v6, v0

    move-object v7, v5

    move-object v8, v2

    invoke-static {v6, v7, v8}, Lgnu/bytecode/ZipArchive;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J

    move-result-wide v6

    .line 51
    move-object v6, v5

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 53
    .end local v5    # "out":Ljava/io/OutputStream;
    :cond_1
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    move-object/from16 v1, p0

    .local v1, "args":[Ljava/lang/String;
    move-object v11, v1

    array-length v11, v11

    const/4 v12, 0x2

    if-ge v11, v12, :cond_0

    .line 78
    invoke-static {}, Lgnu/bytecode/ZipArchive;->usage()V

    .line 79
    :cond_0
    move-object v11, v1

    const/4 v12, 0x0

    aget-object v11, v11, v12

    move-object v2, v11

    .line 80
    .local v2, "command":Ljava/lang/String;
    move-object v11, v1

    const/4 v12, 0x1

    aget-object v11, v11, v12

    move-object v3, v11

    .line 84
    .local v3, "archive_name":Ljava/lang/String;
    move-object v11, v2

    :try_start_0
    const-string/jumbo v12, "t"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    move-object v11, v2

    const-string/jumbo v12, "p"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    move-object v11, v2

    const-string/jumbo v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 88
    :cond_1
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object v4, v11

    .line 89
    .local v4, "out":Ljava/io/PrintStream;
    const/16 v11, 0x400

    new-array v11, v11, [B

    move-object v5, v11

    .line 90
    .local v5, "buf":[B
    move-object v11, v1

    array-length v11, v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_5

    .line 92
    new-instance v11, Ljava/io/BufferedInputStream;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    new-instance v13, Ljava/io/FileInputStream;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    move-object v15, v3

    invoke-direct {v14, v15}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v12, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v6, v11

    .line 94
    .local v6, "in":Ljava/io/BufferedInputStream;
    new-instance v11, Ljava/util/zip/ZipInputStream;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v6

    invoke-direct {v12, v13}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v7, v11

    .line 96
    .local v7, "zin":Ljava/util/zip/ZipInputStream;
    :goto_0
    move-object v11, v7

    invoke-virtual {v11}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v11

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v8, v12

    .local v8, "zent":Ljava/util/zip/ZipEntry;
    if-eqz v11, :cond_4

    .line 98
    move-object v11, v8

    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    .line 99
    .local v9, "name":Ljava/lang/String;
    move-object v11, v2

    const-string/jumbo v12, "t"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 101
    move-object v11, v4

    move-object v12, v9

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 102
    move-object v11, v4

    const-string/jumbo v12, " size: "

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 103
    move-object v11, v4

    move-object v12, v8

    invoke-virtual {v12}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/io/PrintStream;->println(J)V

    .line 113
    :goto_1
    goto :goto_0

    .line 105
    :cond_2
    move-object v11, v2

    const-string/jumbo v12, "p"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 107
    move-object v11, v7

    move-object v12, v4

    move-object v13, v5

    invoke-static {v11, v12, v13}, Lgnu/bytecode/ZipArchive;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J

    move-result-wide v11

    goto :goto_1

    .line 111
    :cond_3
    move-object v11, v7

    move-object v12, v9

    move-object v13, v5

    invoke-static {v11, v12, v13}, Lgnu/bytecode/ZipArchive;->copy(Ljava/io/InputStream;Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 174
    .end local v4    # "out":Ljava/io/PrintStream;
    .end local v5    # "buf":[B
    .end local v6    # "in":Ljava/io/BufferedInputStream;
    .end local v7    # "zin":Ljava/util/zip/ZipInputStream;
    .end local v8    # "zent":Ljava/util/zip/ZipEntry;
    .end local v9    # "name":Ljava/lang/String;
    :catch_0
    move-exception v11

    move-object v4, v11

    .line 176
    .local v4, "ex":Ljava/io/IOException;
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "I/O Exception:  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v4

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 178
    .end local v4    # "ex":Ljava/io/IOException;
    :goto_2
    return-void

    .line 114
    .line 144
    .line 177
    :cond_4
    :goto_3
    goto :goto_2

    .line 117
    .local v4, "out":Ljava/io/PrintStream;
    .restart local v5    # "buf":[B
    :cond_5
    :try_start_1
    new-instance v11, Ljava/util/zip/ZipFile;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v3

    invoke-direct {v12, v13}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    move-object v6, v11

    .line 118
    .local v6, "zar":Ljava/util/zip/ZipFile;
    const/4 v11, 0x2

    move v7, v11

    .local v7, "i":I
    :goto_4
    move v11, v7

    move-object v12, v1

    array-length v12, v12

    if-ge v11, v12, :cond_4

    .line 120
    move-object v11, v1

    move v12, v7

    aget-object v11, v11, v12

    move-object v8, v11

    .line 121
    .local v8, "name":Ljava/lang/String;
    move-object v11, v6

    move-object v12, v8

    invoke-virtual {v11, v12}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v11

    move-object v9, v11

    .line 122
    .local v9, "zent":Ljava/util/zip/ZipEntry;
    move-object v11, v9

    if-nez v11, :cond_6

    .line 124
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "zipfile "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v1

    move v14, v7

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " - not found"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 126
    const/4 v11, -0x1

    invoke-static {v11}, Ljava/lang/System;->exit(I)V

    .line 118
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 128
    :cond_6
    move-object v11, v2

    const-string/jumbo v12, "t"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 130
    move-object v11, v4

    move-object v12, v8

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 131
    move-object v11, v4

    const-string/jumbo v12, " size: "

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 132
    move-object v11, v4

    move-object v12, v9

    invoke-virtual {v12}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/io/PrintStream;->println(J)V

    goto :goto_5

    .line 134
    :cond_7
    move-object v11, v2

    const-string/jumbo v12, "p"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 136
    move-object v11, v6

    move-object v12, v9

    invoke-virtual {v11, v12}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v11

    move-object v12, v4

    move-object v13, v5

    invoke-static {v11, v12, v13}, Lgnu/bytecode/ZipArchive;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J

    move-result-wide v11

    goto :goto_5

    .line 140
    :cond_8
    move-object v11, v6

    move-object v12, v9

    invoke-virtual {v11, v12}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v11

    move-object v12, v8

    move-object v13, v5

    invoke-static {v11, v12, v13}, Lgnu/bytecode/ZipArchive;->copy(Ljava/io/InputStream;Ljava/lang/String;[B)V

    goto :goto_5

    .line 145
    .end local v4    # "out":Ljava/io/PrintStream;
    .end local v5    # "buf":[B
    .end local v6    # "zar":Ljava/util/zip/ZipFile;
    .end local v7    # "i":I
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "zent":Ljava/util/zip/ZipEntry;
    :cond_9
    move-object v11, v2

    const-string/jumbo v12, "q"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 147
    new-instance v11, Ljava/util/zip/ZipOutputStream;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    move-object v15, v3

    invoke-direct {v14, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v12, v13}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v4, v11

    .line 149
    .local v4, "zar":Ljava/util/zip/ZipOutputStream;
    const/4 v11, 0x2

    move v5, v11

    .local v5, "i":I
    :goto_6
    move v11, v5

    move-object v12, v1

    array-length v12, v12

    if-ge v11, v12, :cond_d

    .line 151
    new-instance v11, Ljava/io/File;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v1

    move v14, v5

    aget-object v13, v13, v14

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v11

    .line 152
    .local v6, "in":Ljava/io/File;
    move-object v11, v6

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_a

    .line 153
    new-instance v11, Ljava/io/IOException;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v1

    move v15, v5

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " - not found"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 154
    :cond_a
    move-object v11, v6

    invoke-virtual {v11}, Ljava/io/File;->canRead()Z

    move-result v11

    if-nez v11, :cond_b

    .line 155
    new-instance v11, Ljava/io/IOException;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v1

    move v15, v5

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " - not readable"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 156
    :cond_b
    move-object v11, v6

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v11

    long-to-int v11, v11

    move v7, v11

    .line 157
    .local v7, "size":I
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v6

    invoke-direct {v12, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v8, v11

    .line 158
    .local v8, "fin":Ljava/io/FileInputStream;
    move v11, v7

    new-array v11, v11, [B

    move-object v9, v11

    .line 159
    .local v9, "contents":[B
    move-object v11, v8

    move-object v12, v9

    invoke-virtual {v11, v12}, Ljava/io/FileInputStream;->read([B)I

    move-result v11

    move v12, v7

    if-eq v11, v12, :cond_c

    .line 160
    new-instance v11, Ljava/io/IOException;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v1

    move v15, v5

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " - read error"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 161
    :cond_c
    move-object v11, v8

    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 163
    new-instance v11, Ljava/util/zip/ZipEntry;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v1

    move v14, v5

    aget-object v13, v13, v14

    invoke-direct {v12, v13}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    move-object v10, v11

    .line 164
    .local v10, "ze":Ljava/util/zip/ZipEntry;
    move-object v11, v10

    move v12, v7

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 165
    move-object v11, v10

    move-object v12, v6

    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 166
    move-object v11, v4

    move-object v12, v10

    invoke-virtual {v11, v12}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 167
    move-object v11, v4

    move-object v12, v9

    const/4 v13, 0x0

    move v14, v7

    invoke-virtual {v11, v12, v13, v14}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 149
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_6

    .line 169
    .end local v6    # "in":Ljava/io/File;
    .end local v7    # "size":I
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .end local v9    # "contents":[B
    .end local v10    # "ze":Ljava/util/zip/ZipEntry;
    :cond_d
    move-object v11, v4

    invoke-virtual {v11}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 170
    goto/16 :goto_3

    .line 172
    .end local v4    # "zar":Ljava/util/zip/ZipOutputStream;
    .end local v5    # "i":I
    :cond_e
    invoke-static {}, Lgnu/bytecode/ZipArchive;->usage()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method private static usage()V
    .locals 2

    .prologue
    .line 18
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "zipfile [ptxq] archive [file ...]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 19
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 20
    return-void
.end method
