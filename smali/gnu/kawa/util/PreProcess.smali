.class public Lgnu/kawa/util/PreProcess;
.super Ljava/lang/Object;
.source "PreProcess.java"


# static fields
.field static final JAVA4_FEATURES:Ljava/lang/String; = "+JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio"

.field static final JAVA5_FEATURES:Ljava/lang/String; = "+JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio +use:org.w3c.dom.Node +use:javax.xml.transform +JAXP-1.3 -JAXP-QName"

.field static final NO_JAVA4_FEATURES:Ljava/lang/String; = "-JAVA5 -use:java.util.IdentityHashMap -use:java.lang.CharSequence -use:java.lang.Throwable.getCause -use:java.net.URI -use:java.util.regex -use:org.w3c.dom.Node -JAXP-1.3 -use:javax.xml.transform -JAVA5 -JAVA6 -JAVA6COMPAT5 -JAXP-QName -use:java.text.Normalizer -SAX2 -use:java.nio -Android"

.field static final NO_JAVA6_FEATURES:Ljava/lang/String; = "-JAVA6 -JAVA7 -use:java.dyn -use:java.text.Normalizer"

.field static version_features:[Ljava/lang/String;


# instance fields
.field filename:Ljava/lang/String;

.field keywords:Ljava/util/Hashtable;

.field lineno:I

.field resultBuffer:[B

.field resultLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 24
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "java1"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "-JAVA2 -JAVA5 -use:java.util.IdentityHashMap -use:java.lang.CharSequence -use:java.lang.Throwable.getCause -use:java.net.URI -use:java.util.regex -use:org.w3c.dom.Node -JAXP-1.3 -use:javax.xml.transform -JAVA5 -JAVA6 -JAVA6COMPAT5 -JAXP-QName -use:java.text.Normalizer -SAX2 -use:java.nio -Android -JAVA6 -JAVA7 -use:java.dyn -use:java.text.Normalizer"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, "java2"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string/jumbo v3, "+JAVA2 -JAVA5 -use:java.util.IdentityHashMap -use:java.lang.CharSequence -use:java.lang.Throwable.getCause -use:java.net.URI -use:java.util.regex -use:org.w3c.dom.Node -JAXP-1.3 -use:javax.xml.transform -JAVA5 -JAVA6 -JAVA6COMPAT5 -JAXP-QName -use:java.text.Normalizer -SAX2 -use:java.nio -Android -JAVA6 -JAVA7 -use:java.dyn -use:java.text.Normalizer"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string/jumbo v3, "java4"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    const-string/jumbo v3, "-JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio -use:org.w3c.dom.Node -JAXP-1.3 -use:javax.xml.transform -JAXP-QName -JAVA6COMPAT5 -Android -JAVA6 -JAVA7 -use:java.dyn -use:java.text.Normalizer"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    const-string/jumbo v3, "java4x"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    const-string/jumbo v3, "-JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio +use:org.w3c.dom.Node +JAXP-1.3 +use:javax.xml.transform -JAXP-QName -JAVA6COMPAT5 -Android -JAVA6 -JAVA7 -use:java.dyn -use:java.text.Normalizer"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8

    const-string/jumbo v3, "java5"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9

    const-string/jumbo v3, "+JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio +use:org.w3c.dom.Node +use:javax.xml.transform +JAXP-1.3 -JAXP-QName -JAVA6COMPAT5 -Android -JAVA6 -JAVA7 -use:java.dyn -use:java.text.Normalizer"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa

    const-string/jumbo v3, "java6compat5"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xb

    const-string/jumbo v3, "+JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio +use:org.w3c.dom.Node +use:javax.xml.transform +JAXP-1.3 -JAXP-QName -JAVA6 -JAVA7 +JAVA6COMPAT5 +use:java.text.Normalizer -use:java.dyn -Android"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xc

    const-string/jumbo v3, "java6"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xd

    const-string/jumbo v3, "+JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio +use:org.w3c.dom.Node +use:javax.xml.transform +JAXP-1.3 -JAXP-QName +JAVA6 -JAVA7 -JAVA6COMPAT5 +use:java.text.Normalizer -use:java.dyn -Android"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xe

    const-string/jumbo v3, "java7"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xf

    const-string/jumbo v3, "+JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio +use:org.w3c.dom.Node +use:javax.xml.transform +JAXP-1.3 -JAXP-QName +JAVA6 +JAVA7 -JAVA6COMPAT5 +use:java.text.Normalizer +use:java.dyn -Android"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x10

    const-string/jumbo v3, "android"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x11

    const-string/jumbo v3, "+JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio +use:org.w3c.dom.Node +JAXP-1.3 -JAXP-QName -use:javax.xml.transform -JAVA6 -JAVA6COMPAT5 +Android -JAVA6 -JAVA7 -use:java.dyn -use:java.text.Normalizer"

    aput-object v3, v1, v2

    sput-object v0, Lgnu/kawa/util/PreProcess;->version_features:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/PreProcess;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 14
    move-object v1, v0

    new-instance v2, Ljava/util/Hashtable;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, v1, Lgnu/kawa/util/PreProcess;->keywords:Ljava/util/Hashtable;

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "args":[Ljava/lang/String;
    new-instance v3, Lgnu/kawa/util/PreProcess;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lgnu/kawa/util/PreProcess;-><init>()V

    move-object v1, v3

    .line 343
    .local v1, "pp":Lgnu/kawa/util/PreProcess;
    move-object v3, v1

    iget-object v3, v3, Lgnu/kawa/util/PreProcess;->keywords:Ljava/util/Hashtable;

    const-string/jumbo v4, "true"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 344
    move-object v3, v1

    iget-object v3, v3, Lgnu/kawa/util/PreProcess;->keywords:Ljava/util/Hashtable;

    const-string/jumbo v4, "false"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 346
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 347
    move-object v3, v1

    move-object v4, v0

    move v5, v2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lgnu/kawa/util/PreProcess;->handleArg(Ljava/lang/String;)V

    .line 346
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 348
    :cond_0
    return-void
.end method


# virtual methods
.method error(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/PreProcess;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/util/PreProcess;->filename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lgnu/kawa/util/PreProcess;->lineno:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 41
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 42
    return-void
.end method

.method public filter(Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/PreProcess;
    move-object v1, p1

    .local v1, "filename":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    new-instance v5, Ljava/io/BufferedInputStream;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/io/FileInputStream;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v1

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/util/PreProcess;->filter(Ljava/lang/String;Ljava/io/BufferedInputStream;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    new-instance v3, Ljava/io/FileOutputStream;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 52
    .local v2, "out":Ljava/io/FileOutputStream;
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/util/PreProcess;->resultBuffer:[B

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Lgnu/kawa/util/PreProcess;->resultLength:I

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 53
    move-object v3, v2

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 54
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Pre-processed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 56
    .end local v2    # "out":Ljava/io/FileOutputStream;
    :cond_0
    return-void
.end method

.method public filter(Ljava/lang/String;Ljava/io/BufferedInputStream;)Z
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 60
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/kawa/util/PreProcess;
    move-object/from16 v3, p1

    .local v3, "filename":Ljava/lang/String;
    move-object/from16 v4, p2

    .local v4, "in":Ljava/io/BufferedInputStream;
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lgnu/kawa/util/PreProcess;->filename:Ljava/lang/String;

    .line 61
    const/16 v24, 0x0

    move/from16 v5, v24

    .line 63
    .local v5, "changed":Z
    const/16 v24, 0x7d0

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v24, v0

    move-object/from16 v6, v24

    .line 64
    .local v6, "buf":[B
    const/16 v24, 0x0

    move/from16 v7, v24

    .line 65
    .local v7, "len":I
    const/16 v24, 0x0

    move/from16 v8, v24

    .line 66
    .local v8, "lineStart":I
    const/16 v24, -0x1

    move/from16 v9, v24

    .line 67
    .local v9, "dataStart":I
    const/16 v24, 0x0

    move/from16 v10, v24

    .line 68
    .local v10, "cmdLine":I
    move-object/from16 v24, v2

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lgnu/kawa/util/PreProcess;->lineno:I

    .line 70
    const/16 v24, -0x1

    move/from16 v11, v24

    .line 71
    .local v11, "commentAt":I
    const/16 v24, 0x0

    move/from16 v12, v24

    .line 72
    .local v12, "curIndent":I
    const/16 v24, 0x0

    move/from16 v13, v24

    .line 75
    .local v13, "nesting":I
    const/16 v24, 0x0

    move/from16 v14, v24

    .line 76
    .local v14, "skipNesting":I
    const/16 v24, 0x0

    move-object/from16 v15, v24

    .line 77
    .local v15, "cmd":Ljava/lang/String;
    const/16 v24, 0x0

    move/from16 v16, v24

    .line 80
    .local v16, "changedLine":I
    :goto_0
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedInputStream;->read()I

    move-result v24

    move/from16 v17, v24

    .line 81
    .local v17, "c":I
    move/from16 v24, v17

    if-gez v24, :cond_1

    .line 82
    .line 268
    :goto_1
    move/from16 v24, v13

    if-eqz v24, :cond_0

    .line 270
    move-object/from16 v24, v2

    move/from16 v25, v10

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lgnu/kawa/util/PreProcess;->lineno:I

    .line 271
    move-object/from16 v24, v2

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v30, v25

    move-object/from16 v25, v30

    move-object/from16 v26, v30

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "unterminated "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v15

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lgnu/kawa/util/PreProcess;->error(Ljava/lang/String;)V

    .line 273
    :cond_0
    move-object/from16 v24, v2

    move-object/from16 v25, v6

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lgnu/kawa/util/PreProcess;->resultBuffer:[B

    .line 274
    move-object/from16 v24, v2

    move/from16 v25, v7

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lgnu/kawa/util/PreProcess;->resultLength:I

    .line 275
    move/from16 v24, v5

    move/from16 v2, v24

    .end local v2    # "this":Lgnu/kawa/util/PreProcess;
    return v2

    .line 83
    .restart local v2    # "this":Lgnu/kawa/util/PreProcess;
    :cond_1
    move/from16 v24, v7

    const/16 v25, 0xa

    add-int/lit8 v24, v24, 0xa

    move-object/from16 v25, v6

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_2

    .line 85
    const/16 v24, 0x2

    move/from16 v25, v7

    mul-int v24, v24, v25

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v24, v0

    move-object/from16 v18, v24

    .line 86
    .local v18, "nbuf":[B
    move-object/from16 v24, v6

    const/16 v25, 0x0

    move-object/from16 v26, v18

    const/16 v27, 0x0

    move/from16 v28, v7

    invoke-static/range {v24 .. v28}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    move-object/from16 v24, v18

    move-object/from16 v6, v24

    .line 89
    .end local v18    # "nbuf":[B
    :cond_2
    move/from16 v24, v17

    const/16 v25, 0xa

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    move/from16 v24, v7

    if-lez v24, :cond_3

    move-object/from16 v24, v6

    move/from16 v25, v7

    const/16 v26, 0x1

    add-int/lit8 v25, v25, -0x1

    aget-byte v24, v24, v25

    const/16 v25, 0xd

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    .line 91
    move-object/from16 v24, v6

    move/from16 v25, v7

    add-int/lit8 v7, v7, 0x1

    move/from16 v26, v17

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v24, v25

    .line 92
    goto/16 :goto_0

    .line 94
    :cond_3
    move/from16 v24, v11

    if-ltz v24, :cond_5

    move/from16 v24, v9

    if-gez v24, :cond_5

    move/from16 v24, v16

    if-gtz v24, :cond_5

    move/from16 v24, v17

    const/16 v25, 0xd

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_5

    move/from16 v24, v17

    const/16 v25, 0xa

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_5

    move/from16 v24, v11

    move/from16 v25, v12

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_4

    move/from16 v24, v17

    const/16 v25, 0x20

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_5

    move/from16 v24, v17

    const/16 v25, 0x9

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_5

    .line 100
    :cond_4
    move/from16 v24, v17

    const/16 v25, 0x2f

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_a

    .line 107
    move-object/from16 v24, v4

    const/16 v25, 0x64

    invoke-virtual/range {v24 .. v25}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 108
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedInputStream;->read()I

    move-result v24

    move/from16 v19, v24

    .line 109
    .local v19, "d":I
    move/from16 v24, v19

    const/16 v25, 0x2f

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    .line 110
    const/16 v24, 0x0

    move/from16 v18, v24

    .line 118
    .local v18, "doComment":Z
    :goto_2
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedInputStream;->reset()V

    .line 119
    .line 122
    .end local v19    # "d":I
    :goto_3
    move/from16 v24, v18

    if-eqz v24, :cond_5

    .line 124
    move-object/from16 v24, v6

    move/from16 v25, v7

    add-int/lit8 v7, v7, 0x1

    const/16 v26, 0x2f

    aput-byte v26, v24, v25

    .line 125
    move-object/from16 v24, v6

    move/from16 v25, v7

    add-int/lit8 v7, v7, 0x1

    const/16 v26, 0x2f

    aput-byte v26, v24, v25

    .line 126
    move-object/from16 v24, v6

    move/from16 v25, v7

    add-int/lit8 v7, v7, 0x1

    const/16 v26, 0x20

    aput-byte v26, v24, v25

    .line 127
    const/16 v24, 0x1

    move/from16 v16, v24

    .line 128
    const/16 v24, 0x1

    move/from16 v5, v24

    .line 131
    .end local v18    # "doComment":Z
    :cond_5
    move/from16 v24, v17

    const/16 v25, 0x20

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_c

    move/from16 v24, v17

    const/16 v25, 0x9

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_c

    move/from16 v24, v9

    if-gez v24, :cond_c

    .line 134
    move/from16 v24, v7

    move/from16 v9, v24

    .line 135
    move/from16 v24, v13

    if-lez v24, :cond_c

    move/from16 v24, v11

    move/from16 v25, v12

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_c

    move/from16 v24, v17

    const/16 v25, 0x2f

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_c

    .line 137
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedInputStream;->read()I

    move-result v24

    move/from16 v17, v24

    .line 138
    move/from16 v24, v17

    if-gez v24, :cond_b

    .line 139
    goto/16 :goto_1

    .line 111
    .restart local v19    # "d":I
    :cond_6
    move/from16 v24, v19

    const/16 v25, 0x2a

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_9

    .line 113
    :cond_7
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedInputStream;->read()I

    move-result v24

    move/from16 v19, v24

    move/from16 v24, v19

    const/16 v25, 0x20

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_7

    move/from16 v24, v19

    const/16 v25, 0x9

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_7

    .line 114
    move/from16 v24, v19

    const/16 v25, 0x23

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_8

    const/16 v24, 0x1

    :goto_4
    move/from16 v18, v24

    .restart local v18    # "doComment":Z
    goto/16 :goto_2

    .end local v18    # "doComment":Z
    :cond_8
    const/16 v24, 0x0

    goto :goto_4

    .line 117
    :cond_9
    const/16 v24, 0x1

    move/from16 v18, v24

    .restart local v18    # "doComment":Z
    goto/16 :goto_2

    .line 121
    .end local v18    # "doComment":Z
    .end local v19    # "d":I
    :cond_a
    const/16 v24, 0x1

    move/from16 v18, v24

    .restart local v18    # "doComment":Z
    goto/16 :goto_3

    .line 140
    .end local v18    # "doComment":Z
    :cond_b
    move/from16 v24, v17

    const/16 v25, 0x2f

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_f

    .line 141
    move-object/from16 v24, v6

    move/from16 v25, v7

    add-int/lit8 v7, v7, 0x1

    const/16 v26, 0x2f

    aput-byte v26, v24, v25

    .line 158
    :cond_c
    :goto_5
    move-object/from16 v24, v6

    move/from16 v25, v7

    move/from16 v26, v17

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v24, v25

    .line 159
    add-int/lit8 v7, v7, 0x1

    .line 160
    move/from16 v24, v17

    const/16 v25, 0xd

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_d

    move/from16 v24, v17

    const/16 v25, 0xa

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_25

    .line 162
    :cond_d
    const/16 v24, -0x1

    move/from16 v18, v24

    .line 163
    .local v18, "firstNonSpace":I
    const/16 v24, 0x0

    move/from16 v19, v24

    .line 164
    .local v19, "lastNonSpace":I
    move/from16 v24, v8

    move/from16 v20, v24

    .local v20, "i":I
    :goto_6
    move/from16 v24, v20

    move/from16 v25, v7

    const/16 v26, 0x1

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_12

    .line 166
    move-object/from16 v24, v6

    move/from16 v25, v20

    aget-byte v24, v24, v25

    const/16 v25, 0x20

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_e

    move-object/from16 v24, v6

    move/from16 v25, v20

    aget-byte v24, v24, v25

    const/16 v25, 0x9

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_e

    .line 168
    move/from16 v24, v20

    move/from16 v19, v24

    .line 169
    move/from16 v24, v18

    if-gez v24, :cond_e

    .line 170
    move/from16 v24, v20

    move/from16 v18, v24

    .line 164
    :cond_e
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    .line 144
    .end local v18    # "firstNonSpace":I
    .end local v19    # "lastNonSpace":I
    .end local v20    # "i":I
    :cond_f
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedInputStream;->read()I

    move-result v24

    move/from16 v17, v24

    .line 145
    move/from16 v24, v17

    if-gez v24, :cond_10

    .line 146
    goto/16 :goto_1

    .line 147
    :cond_10
    const/16 v24, -0x1

    move/from16 v16, v24

    .line 148
    const/16 v24, 0x1

    move/from16 v5, v24

    .line 149
    move/from16 v24, v17

    const/16 v25, 0x20

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_c

    .line 151
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedInputStream;->read()I

    move-result v24

    move/from16 v17, v24

    .line 152
    move/from16 v24, v17

    const/16 v25, 0x20

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_11

    move/from16 v24, v17

    const/16 v25, 0x9

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_c

    .line 153
    :cond_11
    const/16 v24, -0x1

    move/from16 v9, v24

    goto/16 :goto_5

    .line 173
    .restart local v18    # "firstNonSpace":I
    .restart local v19    # "lastNonSpace":I
    .restart local v20    # "i":I
    :cond_12
    move/from16 v24, v19

    move/from16 v25, v18

    sub-int v24, v24, v25

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_17

    move-object/from16 v24, v6

    move/from16 v25, v18

    aget-byte v24, v24, v25

    const/16 v25, 0x2f

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_17

    move-object/from16 v24, v6

    move/from16 v25, v18

    const/16 v26, 0x1

    add-int/lit8 v25, v25, 0x1

    aget-byte v24, v24, v25

    const/16 v25, 0x2a

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_17

    move-object/from16 v24, v6

    move/from16 v25, v19

    const/16 v26, 0x1

    add-int/lit8 v25, v25, -0x1

    aget-byte v24, v24, v25

    const/16 v25, 0x2a

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_17

    move-object/from16 v24, v6

    move/from16 v25, v19

    aget-byte v24, v24, v25

    const/16 v25, 0x2f

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_17

    .line 179
    add-int/lit8 v18, v18, 0x2

    .line 181
    :goto_7
    move/from16 v24, v18

    move/from16 v25, v19

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_13

    move-object/from16 v24, v6

    move/from16 v25, v18

    aget-byte v24, v24, v25

    const/16 v25, 0x20

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_13

    .line 182
    add-int/lit8 v18, v18, 0x1

    goto :goto_7

    .line 183
    :cond_13
    add-int/lit8 v19, v19, -0x2

    .line 185
    :goto_8
    move/from16 v24, v19

    move/from16 v25, v18

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_14

    move-object/from16 v24, v6

    move/from16 v25, v19

    aget-byte v24, v24, v25

    const/16 v25, 0x20

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_14

    .line 186
    add-int/lit8 v19, v19, -0x1

    goto :goto_8

    .line 187
    :cond_14
    move-object/from16 v24, v6

    move/from16 v25, v18

    aget-byte v24, v24, v25

    const/16 v25, 0x23

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_17

    .line 189
    new-instance v24, Ljava/lang/String;

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    move-object/from16 v26, v6

    move/from16 v27, v18

    move/from16 v28, v19

    move/from16 v29, v18

    sub-int v28, v28, v29

    const/16 v29, 0x1

    add-int/lit8 v28, v28, 0x1

    const-string/jumbo v29, "ISO-8859-1"

    invoke-direct/range {v25 .. v29}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object/from16 v20, v24

    .line 192
    .local v20, "cmnt":Ljava/lang/String;
    move-object/from16 v24, v20

    const/16 v25, 0x20

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(I)I

    move-result v24

    move/from16 v21, v24

    .line 195
    .local v21, "sp":I
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lgnu/kawa/util/PreProcess;->lineno:I

    move/from16 v24, v0

    move/from16 v10, v24

    .line 196
    move/from16 v24, v21

    if-lez v24, :cond_19

    .line 198
    move-object/from16 v24, v20

    const/16 v25, 0x0

    move/from16 v26, v21

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v15, v24

    .line 199
    move-object/from16 v24, v20

    move/from16 v25, v21

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v22, v24

    .line 200
    .local v22, "rest":Ljava/lang/String;
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lgnu/kawa/util/PreProcess;->keywords:Ljava/util/Hashtable;

    move-object/from16 v24, v0

    move-object/from16 v25, v22

    invoke-virtual/range {v24 .. v25}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v23, v24

    .line 208
    :goto_9
    const-string/jumbo v24, "#ifdef"

    move-object/from16 v25, v15

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_15

    const-string/jumbo v24, "#ifndef"

    move-object/from16 v25, v15

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1d

    .line 210
    :cond_15
    move-object/from16 v24, v23

    if-nez v24, :cond_16

    .line 212
    sget-object v24, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v30, v25

    move-object/from16 v25, v30

    move-object/from16 v26, v30

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v3

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ":"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Lgnu/kawa/util/PreProcess;->lineno:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ": warning - undefined keyword: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v22

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 214
    sget-object v24, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v23, v24

    .line 216
    :cond_16
    add-int/lit8 v13, v13, 0x1

    .line 217
    move/from16 v24, v14

    if-lez v24, :cond_1a

    .line 218
    move/from16 v24, v12

    move/from16 v11, v24

    .line 259
    .end local v20    # "cmnt":Ljava/lang/String;
    .end local v21    # "sp":I
    .end local v22    # "rest":Ljava/lang/String;
    :cond_17
    :goto_a
    move/from16 v24, v7

    move/from16 v8, v24

    .line 260
    const/16 v24, -0x1

    move/from16 v9, v24

    .line 261
    const/16 v24, 0x0

    move/from16 v12, v24

    .line 262
    move-object/from16 v24, v2

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    move-object/from16 v0, v25

    iget v0, v0, Lgnu/kawa/util/PreProcess;->lineno:I

    move/from16 v25, v0

    const/16 v26, 0x1

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lgnu/kawa/util/PreProcess;->lineno:I

    .line 263
    const/16 v24, 0x0

    move/from16 v16, v24

    .line 267
    .end local v18    # "firstNonSpace":I
    .end local v19    # "lastNonSpace":I
    :cond_18
    :goto_b
    goto/16 :goto_0

    .line 204
    .restart local v18    # "firstNonSpace":I
    .restart local v19    # "lastNonSpace":I
    .restart local v20    # "cmnt":Ljava/lang/String;
    .restart local v21    # "sp":I
    :cond_19
    move-object/from16 v24, v20

    move-object/from16 v15, v24

    .line 205
    const-string/jumbo v24, ""

    move-object/from16 v22, v24

    .line 206
    .restart local v22    # "rest":Ljava/lang/String;
    const/16 v24, 0x0

    move-object/from16 v23, v24

    .local v23, "binding":Ljava/lang/Object;
    goto/16 :goto_9

    .line 219
    .end local v23    # "binding":Ljava/lang/Object;
    :cond_1a
    move-object/from16 v24, v15

    const/16 v25, 0x3

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->charAt(I)C

    move-result v24

    const/16 v25, 0x6e

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1b

    const/16 v24, 0x1

    :goto_c
    move-object/from16 v25, v23

    sget-object v26, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_1c

    const/16 v25, 0x1

    :goto_d
    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_17

    .line 222
    move/from16 v24, v12

    move/from16 v11, v24

    .line 223
    move/from16 v24, v13

    move/from16 v14, v24

    goto :goto_a

    .line 219
    :cond_1b
    const/16 v24, 0x0

    goto :goto_c

    :cond_1c
    const/16 v25, 0x0

    goto :goto_d

    .line 226
    :cond_1d
    const-string/jumbo v24, "#else"

    move-object/from16 v25, v15

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_20

    .line 228
    move/from16 v24, v13

    if-nez v24, :cond_1e

    .line 229
    move-object/from16 v24, v2

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v30, v25

    move-object/from16 v25, v30

    move-object/from16 v26, v30

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "unexpected "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v15

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lgnu/kawa/util/PreProcess;->error(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 230
    :cond_1e
    move/from16 v24, v13

    move/from16 v25, v14

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1f

    .line 232
    const/16 v24, -0x1

    move/from16 v11, v24

    .line 233
    const/16 v24, 0x0

    move/from16 v14, v24

    goto/16 :goto_a

    .line 237
    :cond_1f
    move/from16 v24, v12

    move/from16 v11, v24

    .line 238
    move/from16 v24, v14

    if-nez v24, :cond_17

    .line 239
    move/from16 v24, v13

    move/from16 v14, v24

    goto/16 :goto_a

    .line 242
    :cond_20
    const-string/jumbo v24, "#endif"

    move-object/from16 v25, v15

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_24

    .line 244
    move/from16 v24, v13

    if-nez v24, :cond_21

    .line 245
    move-object/from16 v24, v2

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v30, v25

    move-object/from16 v25, v30

    move-object/from16 v26, v30

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "unexpected "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v15

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lgnu/kawa/util/PreProcess;->error(Ljava/lang/String;)V

    .line 246
    :cond_21
    move/from16 v24, v13

    move/from16 v25, v14

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_23

    .line 248
    const/16 v24, 0x0

    move/from16 v14, v24

    .line 249
    const/16 v24, -0x1

    move/from16 v11, v24

    .line 253
    :cond_22
    :goto_e
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_a

    .line 251
    :cond_23
    move/from16 v24, v14

    if-lez v24, :cond_22

    .line 252
    move/from16 v24, v12

    move/from16 v11, v24

    goto :goto_e

    .line 256
    :cond_24
    move-object/from16 v24, v2

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v30, v25

    move-object/from16 v25, v30

    move-object/from16 v26, v30

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "unknown command: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v20

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lgnu/kawa/util/PreProcess;->error(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 265
    .end local v18    # "firstNonSpace":I
    .end local v19    # "lastNonSpace":I
    .end local v20    # "cmnt":Ljava/lang/String;
    .end local v21    # "sp":I
    .end local v22    # "rest":Ljava/lang/String;
    :cond_25
    move/from16 v24, v9

    if-gez v24, :cond_18

    .line 266
    move/from16 v24, v17

    const/16 v25, 0x9

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_26

    move/from16 v24, v12

    const/16 v25, 0x8

    add-int/lit8 v24, v24, 0x8

    const/16 v25, -0x8

    and-int/lit8 v24, v24, -0x8

    :goto_f
    move/from16 v12, v24

    goto/16 :goto_b

    :cond_26
    move/from16 v24, v12

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    goto :goto_f
.end method

.method handleArg(Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/PreProcess;
    move-object v1, p1

    .local v1, "arg":Ljava/lang/String;
    move-object v6, v1

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x25

    if-ne v6, v7, :cond_3

    .line 282
    move-object v6, v1

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 283
    const/4 v6, 0x0

    move v2, v6

    .line 285
    .local v2, "i":I
    :goto_0
    move v6, v2

    sget-object v7, Lgnu/kawa/util/PreProcess;->version_features:[Ljava/lang/String;

    array-length v7, v7

    if-lt v6, v7, :cond_0

    .line 287
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 288
    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    .line 290
    :cond_0
    move-object v6, v1

    sget-object v7, Lgnu/kawa/util/PreProcess;->version_features:[Ljava/lang/String;

    move v8, v2

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 292
    sget-object v6, Lgnu/kawa/util/PreProcess;->version_features:[Ljava/lang/String;

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    aget-object v6, v6, v7

    move-object v3, v6

    .line 293
    .local v3, "features":Ljava/lang/String;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "(variant "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " maps to: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 294
    new-instance v6, Ljava/util/StringTokenizer;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v3

    invoke-direct {v7, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    move-object v4, v6

    .line 295
    .local v4, "tokenizer":Ljava/util/StringTokenizer;
    :goto_1
    move-object v6, v4

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 296
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgnu/kawa/util/PreProcess;->handleArg(Ljava/lang/String;)V

    goto :goto_1

    .line 283
    .end local v3    # "features":Ljava/lang/String;
    .end local v4    # "tokenizer":Ljava/util/StringTokenizer;
    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_0

    .line 337
    .end local v2    # "i":I
    :cond_2
    :goto_2
    return-void

    .line 301
    :cond_3
    move-object v6, v1

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2b

    if-ne v6, v7, :cond_4

    .line 302
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/util/PreProcess;->keywords:Ljava/util/Hashtable;

    move-object v7, v1

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_2

    .line 303
    :cond_4
    move-object v6, v1

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_9

    .line 305
    move-object v6, v1

    const/16 v7, 0x3d

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    move v2, v6

    .line 306
    .local v2, "eq":I
    move v6, v2

    const/4 v7, 0x1

    if-le v6, v7, :cond_8

    .line 308
    move-object v6, v1

    move-object v7, v1

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_6

    const/4 v7, 0x2

    :goto_3
    move v8, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 310
    .local v3, "keyword":Ljava/lang/String;
    move-object v6, v1

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 311
    .local v4, "value":Ljava/lang/String;
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v5, v6

    .line 312
    .local v5, "b":Ljava/lang/Boolean;
    move-object v6, v4

    const-string/jumbo v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 313
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v5, v6

    .line 319
    :cond_5
    :goto_4
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/util/PreProcess;->keywords:Ljava/util/Hashtable;

    move-object v7, v3

    move-object v8, v5

    invoke-virtual {v6, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 320
    .line 323
    .end local v3    # "keyword":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "b":Ljava/lang/Boolean;
    :goto_5
    goto :goto_2

    .line 308
    :cond_6
    const/4 v7, 0x1

    goto :goto_3

    .line 314
    .restart local v3    # "keyword":Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/String;
    .restart local v5    # "b":Ljava/lang/Boolean;
    :cond_7
    move-object v6, v4

    const-string/jumbo v7, "false"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 316
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "invalid value "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 317
    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    goto :goto_4

    .line 322
    .end local v3    # "keyword":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "b":Ljava/lang/Boolean;
    :cond_8
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/util/PreProcess;->keywords:Ljava/util/Hashtable;

    move-object v7, v1

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_5

    .line 328
    .end local v2    # "eq":I
    :cond_9
    move-object v6, v0

    move-object v7, v1

    :try_start_0
    invoke-virtual {v6, v7}, Lgnu/kawa/util/PreProcess;->filter(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    goto/16 :goto_2

    .line 330
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 332
    .local v2, "ex":Ljava/lang/Throwable;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "caught "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 333
    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 334
    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_2
.end method
