.class public Lgnu/bytecode/ZipLoader;
.super Ljava/lang/ClassLoader;
.source "ZipLoader.java"


# instance fields
.field private loadedClasses:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field size:I

.field zar:Ljava/util/zip/ZipFile;

.field private zipname:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ZipLoader;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/ClassLoader;-><init>()V

    .line 31
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lgnu/bytecode/ZipLoader;->zipname:Ljava/lang/String;

    .line 32
    move-object v4, v0

    new-instance v5, Ljava/util/zip/ZipFile;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-direct {v6, v7}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iput-object v5, v4, Lgnu/bytecode/ZipLoader;->zar:Ljava/util/zip/ZipFile;

    .line 33
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lgnu/bytecode/ZipLoader;->size:I

    .line 34
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/ZipLoader;->zar:Ljava/util/zip/ZipFile;

    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    move-object v2, v4

    .line 35
    .local v2, "e":Ljava/util/Enumeration;
    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 37
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    move-object v3, v4

    .line 38
    .local v3, "ent":Ljava/util/zip/ZipEntry;
    move-object v4, v3

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    .line 39
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lgnu/bytecode/ZipLoader;->size:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lgnu/bytecode/ZipLoader;->size:I

    .line 40
    :cond_0
    goto :goto_0

    .line 42
    .end local v3    # "ent":Ljava/util/zip/ZipEntry;
    :cond_1
    move-object v4, v0

    new-instance v5, Ljava/util/Vector;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    iget v7, v7, Lgnu/bytecode/ZipLoader;->size:I

    invoke-direct {v6, v7}, Ljava/util/Vector;-><init>(I)V

    iput-object v5, v4, Lgnu/bytecode/ZipLoader;->loadedClasses:Ljava/util/Vector;

    .line 46
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ZipLoader;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/ZipLoader;->zar:Ljava/util/zip/ZipFile;

    if-eqz v1, :cond_0

    .line 148
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/ZipLoader;->zar:Ljava/util/zip/ZipFile;

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 149
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lgnu/bytecode/ZipLoader;->zar:Ljava/util/zip/ZipFile;

    .line 150
    return-void
.end method

.method public loadAllClasses()Ljava/lang/Class;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    move-object/from16 v1, p0

    .local v1, "this":Lgnu/bytecode/ZipLoader;
    move-object v10, v1

    iget-object v10, v10, Lgnu/bytecode/ZipLoader;->zar:Ljava/util/zip/ZipFile;

    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v10

    move-object v2, v10

    .line 122
    .local v2, "e":Ljava/util/Enumeration;
    const/4 v10, 0x0

    move-object v3, v10

    .line 123
    .local v3, "mainClass":Ljava/lang/Class;
    :goto_0
    move-object v10, v2

    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 125
    move-object v10, v2

    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/zip/ZipEntry;

    move-object v4, v10

    .line 127
    .local v4, "member":Ljava/util/zip/ZipEntry;
    move-object v10, v4

    invoke-virtual {v10}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x2f

    const/16 v12, 0x2e

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    .line 128
    .local v5, "name":Ljava/lang/String;
    move-object v10, v5

    const/4 v11, 0x0

    move-object v12, v5

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const-string/jumbo v13, "/class"

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    .line 129
    move-object v10, v4

    invoke-virtual {v10}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v10

    long-to-int v10, v10

    move v6, v10

    .line 130
    .local v6, "member_size":I
    move-object v10, v1

    iget-object v10, v10, Lgnu/bytecode/ZipLoader;->zar:Ljava/util/zip/ZipFile;

    move-object v11, v4

    invoke-virtual {v10, v11}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v10

    move-object v7, v10

    .line 131
    .local v7, "strm":Ljava/io/InputStream;
    move v10, v6

    new-array v10, v10, [B

    move-object v8, v10

    .line 132
    .local v8, "bytes":[B
    new-instance v10, Ljava/io/DataInputStream;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v7

    invoke-direct {v11, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v11, v8

    invoke-virtual {v10, v11}, Ljava/io/DataInputStream;->readFully([B)V

    .line 133
    move-object v10, v1

    move-object v11, v5

    move-object v12, v8

    const/4 v13, 0x0

    move v14, v6

    invoke-virtual {v10, v11, v12, v13, v14}, Lgnu/bytecode/ZipLoader;->defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v10

    move-object v9, v10

    .line 134
    .local v9, "clas":Ljava/lang/Class;
    move-object v10, v3

    if-nez v10, :cond_0

    .line 135
    move-object v10, v9

    move-object v3, v10

    .line 136
    :cond_0
    move-object v10, v1

    iget-object v10, v10, Lgnu/bytecode/ZipLoader;->loadedClasses:Ljava/util/Vector;

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 137
    move-object v10, v1

    iget-object v10, v10, Lgnu/bytecode/ZipLoader;->loadedClasses:Ljava/util/Vector;

    move-object v11, v9

    invoke-virtual {v10, v11}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 138
    goto :goto_0

    .line 139
    .end local v4    # "member":Ljava/util/zip/ZipEntry;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "member_size":I
    .end local v7    # "strm":Ljava/io/InputStream;
    .end local v8    # "bytes":[B
    .end local v9    # "clas":Ljava/lang/Class;
    :cond_1
    move-object v10, v1

    invoke-virtual {v10}, Lgnu/bytecode/ZipLoader;->close()V

    .line 140
    move-object v10, v3

    move-object v1, v10

    .end local v1    # "this":Lgnu/bytecode/ZipLoader;
    return-object v1
.end method

.method public loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 52
    move-object/from16 v1, p0

    .local v1, "this":Lgnu/bytecode/ZipLoader;
    move-object/from16 v2, p1

    .local v2, "name":Ljava/lang/String;
    move/from16 v3, p2

    .local v3, "resolve":Z
    move-object v12, v1

    iget-object v12, v12, Lgnu/bytecode/ZipLoader;->loadedClasses:Ljava/util/Vector;

    move-object v13, v2

    invoke-virtual {v12, v13}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v12

    move v5, v12

    .line 53
    .local v5, "index":I
    move v12, v5

    if-ltz v12, :cond_1

    .line 54
    move-object v12, v1

    iget-object v12, v12, Lgnu/bytecode/ZipLoader;->loadedClasses:Ljava/util/Vector;

    move v13, v5

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Class;

    move-object v4, v12

    .line 110
    .local v4, "clas":Ljava/lang/Class;
    :goto_0
    move v12, v3

    if-eqz v12, :cond_0

    .line 111
    move-object v12, v1

    move-object v13, v4

    invoke-virtual {v12, v13}, Lgnu/bytecode/ZipLoader;->resolveClass(Ljava/lang/Class;)V

    .line 112
    :cond_0
    move-object v12, v4

    move-object v1, v12

    .end local v1    # "this":Lgnu/bytecode/ZipLoader;
    return-object v1

    .line 55
    .end local v4    # "clas":Ljava/lang/Class;
    .restart local v1    # "this":Lgnu/bytecode/ZipLoader;
    :cond_1
    move-object v12, v1

    iget-object v12, v12, Lgnu/bytecode/ZipLoader;->zar:Ljava/util/zip/ZipFile;

    if-nez v12, :cond_2

    move-object v12, v1

    iget-object v12, v12, Lgnu/bytecode/ZipLoader;->loadedClasses:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v12

    const/4 v13, 0x2

    move-object v14, v1

    iget v14, v14, Lgnu/bytecode/ZipLoader;->size:I

    mul-int/2addr v13, v14

    if-ne v12, v13, :cond_2

    .line 56
    move-object v12, v2

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    move-object v4, v12

    .restart local v4    # "clas":Ljava/lang/Class;
    goto :goto_0

    .line 59
    .end local v4    # "clas":Ljava/lang/Class;
    :cond_2
    const/4 v12, 0x0

    move v6, v12

    .line 60
    .local v6, "reopened":Z
    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object v13, v2

    const/16 v14, 0x2e

    const/16 v15, 0x2f

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ".class"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v7, v12

    .line 61
    .local v7, "member_name":Ljava/lang/String;
    move-object v12, v1

    iget-object v12, v12, Lgnu/bytecode/ZipLoader;->zar:Ljava/util/zip/ZipFile;

    if-nez v12, :cond_3

    .line 64
    move-object v12, v1

    :try_start_0
    new-instance v13, Ljava/util/zip/ZipFile;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v1

    iget-object v15, v15, Lgnu/bytecode/ZipLoader;->zipname:Ljava/lang/String;

    invoke-direct {v14, v15}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iput-object v13, v12, Lgnu/bytecode/ZipLoader;->zar:Ljava/util/zip/ZipFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    const/4 v12, 0x1

    move v6, v12

    .line 73
    .line 75
    :cond_3
    move-object v12, v1

    iget-object v12, v12, Lgnu/bytecode/ZipLoader;->zar:Ljava/util/zip/ZipFile;

    move-object v13, v7

    invoke-virtual {v12, v13}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v12

    move-object v8, v12

    .line 76
    .local v8, "member":Ljava/util/zip/ZipEntry;
    move-object v12, v8

    if-nez v12, :cond_5

    .line 77
    move v12, v6

    if-eqz v12, :cond_4

    .line 79
    move-object v12, v1

    :try_start_1
    invoke-virtual {v12}, Lgnu/bytecode/ZipLoader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 82
    .line 84
    :cond_4
    move-object v12, v2

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    move-object v4, v12

    .restart local v4    # "clas":Ljava/lang/Class;
    goto :goto_0

    .line 67
    .end local v4    # "clas":Ljava/lang/Class;
    .end local v8    # "member":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v12

    move-object v8, v12

    .line 69
    .local v8, "ex":Ljava/io/IOException;
    new-instance v12, Ljava/lang/ClassNotFoundException;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "IOException while loading "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v7

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " from ziparchive \""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v8

    invoke-virtual {v15}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 80
    .local v8, "member":Ljava/util/zip/ZipEntry;
    :catch_1
    move-exception v12

    move-object v9, v12

    .line 81
    .local v9, "e":Ljava/io/IOException;
    new-instance v12, Ljava/lang/RuntimeException;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "failed to close \""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v1

    iget-object v15, v15, Lgnu/bytecode/ZipLoader;->zipname:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 90
    .end local v9    # "e":Ljava/io/IOException;
    :cond_5
    move-object v12, v8

    :try_start_2
    invoke-virtual {v12}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v12

    long-to-int v12, v12

    move v9, v12

    .line 91
    .local v9, "member_size":I
    move-object v12, v1

    iget-object v12, v12, Lgnu/bytecode/ZipLoader;->zar:Ljava/util/zip/ZipFile;

    move-object v13, v8

    invoke-virtual {v12, v13}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v12

    move-object v10, v12

    .line 92
    .local v10, "strm":Ljava/io/InputStream;
    move v12, v9

    new-array v12, v12, [B

    move-object v11, v12

    .line 93
    .local v11, "bytes":[B
    new-instance v12, Ljava/io/DataInputStream;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v10

    invoke-direct {v13, v14}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v13, v11

    invoke-virtual {v12, v13}, Ljava/io/DataInputStream;->readFully([B)V

    .line 94
    move-object v12, v1

    move-object v13, v2

    move-object v14, v11

    const/4 v15, 0x0

    move/from16 v16, v9

    invoke-virtual/range {v12 .. v16}, Lgnu/bytecode/ZipLoader;->defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v12

    move-object v4, v12

    .line 95
    .restart local v4    # "clas":Ljava/lang/Class;
    move-object v12, v1

    iget-object v12, v12, Lgnu/bytecode/ZipLoader;->loadedClasses:Ljava/util/Vector;

    move-object v13, v2

    invoke-virtual {v12, v13}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 96
    move-object v12, v1

    iget-object v12, v12, Lgnu/bytecode/ZipLoader;->loadedClasses:Ljava/util/Vector;

    move-object v13, v4

    invoke-virtual {v12, v13}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 97
    const/4 v12, 0x2

    move-object v13, v1

    iget v13, v13, Lgnu/bytecode/ZipLoader;->size:I

    mul-int/2addr v12, v13

    move-object v13, v1

    iget-object v13, v13, Lgnu/bytecode/ZipLoader;->loadedClasses:Ljava/util/Vector;

    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v13

    if-ne v12, v13, :cond_6

    .line 98
    move-object v12, v1

    invoke-virtual {v12}, Lgnu/bytecode/ZipLoader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 106
    :cond_6
    goto/16 :goto_0

    .line 100
    .end local v4    # "clas":Ljava/lang/Class;
    .end local v9    # "member_size":I
    .end local v10    # "strm":Ljava/io/InputStream;
    .end local v11    # "bytes":[B
    :catch_2
    move-exception v12

    move-object v9, v12

    .line 102
    .local v9, "ex":Ljava/io/IOException;
    new-instance v12, Ljava/lang/ClassNotFoundException;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "IOException while loading "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v7

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " from ziparchive \""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v9

    invoke-virtual {v15}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v12
.end method
