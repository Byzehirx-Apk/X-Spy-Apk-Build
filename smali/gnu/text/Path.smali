.class public abstract Lgnu/text/Path;
.super Ljava/lang/Object;
.source "Path.java"


# static fields
.field public static defaultPath:Lgnu/text/Path;

.field private static pathLocation:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lgnu/text/Path;",
            ">;"
        }
    .end annotation
.end field

.field public static final userDirPath:Lgnu/text/FilePath;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 19
    new-instance v0, Ljava/io/File;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "."

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lgnu/text/FilePath;->valueOf(Ljava/io/File;)Lgnu/text/FilePath;

    move-result-object v0

    sput-object v0, Lgnu/text/Path;->userDirPath:Lgnu/text/FilePath;

    .line 22
    sget-object v0, Lgnu/text/Path;->userDirPath:Lgnu/text/FilePath;

    sput-object v0, Lgnu/text/Path;->defaultPath:Lgnu/text/Path;

    .line 25
    new-instance v0, Ljava/lang/ThreadLocal;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lgnu/text/Path;->pathLocation:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lgnu/text/Path;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;
    .locals 3

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "path":Ljava/lang/Object;
    move-object v2, v0

    instance-of v2, v2, Lgnu/text/Path;

    if-eqz v2, :cond_0

    .line 54
    move-object v2, v0

    check-cast v2, Lgnu/text/Path;

    move-object v0, v2

    .line 73
    .end local v0    # "path":Ljava/lang/Object;
    .local v1, "str":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 55
    .end local v1    # "str":Ljava/lang/String;
    .restart local v0    # "path":Ljava/lang/Object;
    :cond_0
    move-object v2, v0

    instance-of v2, v2, Ljava/net/URL;

    if-eqz v2, :cond_1

    .line 56
    move-object v2, v0

    check-cast v2, Ljava/net/URL;

    invoke-static {v2}, Lgnu/text/URLPath;->valueOf(Ljava/net/URL;)Lgnu/text/URLPath;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 58
    :cond_1
    move-object v2, v0

    instance-of v2, v2, Ljava/net/URI;

    if-eqz v2, :cond_2

    .line 59
    move-object v2, v0

    check-cast v2, Ljava/net/URI;

    invoke-static {v2}, Lgnu/text/URIPath;->valueOf(Ljava/net/URI;)Lgnu/text/URIPath;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 61
    :cond_2
    move-object v2, v0

    instance-of v2, v2, Ljava/io/File;

    if-eqz v2, :cond_3

    .line 62
    move-object v2, v0

    check-cast v2, Ljava/io/File;

    invoke-static {v2}, Lgnu/text/FilePath;->valueOf(Ljava/io/File;)Lgnu/text/FilePath;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 64
    :cond_3
    move-object v2, v0

    instance-of v2, v2, Lgnu/lists/FString;

    if-eqz v2, :cond_4

    .line 65
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 70
    .restart local v1    # "str":Ljava/lang/String;
    :goto_1
    move-object v2, v1

    invoke-static {v2}, Lgnu/text/Path;->uriSchemeSpecified(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 71
    move-object v2, v1

    invoke-static {v2}, Lgnu/text/URIPath;->valueOf(Ljava/lang/String;)Lgnu/text/URIPath;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 66
    .end local v1    # "str":Ljava/lang/String;
    :cond_4
    move-object v2, v0

    instance-of v2, v2, Ljava/lang/String;

    if-nez v2, :cond_5

    .line 67
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 69
    :cond_5
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .restart local v1    # "str":Ljava/lang/String;
    goto :goto_1

    .line 73
    :cond_6
    move-object v2, v1

    invoke-static {v2}, Lgnu/text/FilePath;->valueOf(Ljava/lang/String;)Lgnu/text/FilePath;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public static currentPath()Lgnu/text/Path;
    .locals 2

    .prologue
    .line 35
    sget-object v1, Lgnu/text/Path;->pathLocation:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/text/Path;

    move-object v0, v1

    .line 36
    .local v0, "path":Lgnu/text/Path;
    move-object v1, v0

    if-eqz v1, :cond_0

    .line 37
    move-object v1, v0

    move-object v0, v1

    .line 39
    .end local v0    # "path":Lgnu/text/Path;
    :goto_0
    return-object v0

    .restart local v0    # "path":Lgnu/text/Path;
    :cond_0
    sget-object v1, Lgnu/text/Path;->defaultPath:Lgnu/text/Path;

    move-object v0, v1

    goto :goto_0
.end method

.method public static openInputStream(Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "uri":Ljava/lang/Object;
    move-object v1, v0

    invoke-static {v1}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/text/Path;->openInputStream()Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "uri":Ljava/lang/Object;
    return-object v0
.end method

.method public static relativize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "in":Ljava/lang/String;
    move-object/from16 v1, p1

    .local v1, "base":Ljava/lang/String;
    move-object v11, v1

    move-object v2, v11

    .line 330
    .local v2, "baseStr":Ljava/lang/String;
    move-object v11, v0

    move-object v3, v11

    .line 332
    .local v3, "inStr":Ljava/lang/String;
    new-instance v11, Ljava/net/URI;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    move-object v13, v2

    invoke-direct {v12, v13}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v2, v11

    .line 333
    move-object v11, v0

    invoke-static {v11}, Lgnu/text/URLPath;->valueOf(Ljava/lang/String;)Lgnu/text/URIPath;

    move-result-object v11

    invoke-virtual {v11}, Lgnu/text/URIPath;->toURI()Ljava/net/URI;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    .line 335
    move-object v11, v2

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    move v4, v11

    .line 336
    .local v4, "baseLen":I
    move-object v11, v3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    move v5, v11

    .line 337
    .local v5, "inLen":I
    const/4 v11, 0x0

    move v6, v11

    .line 338
    .local v6, "i":I
    const/4 v11, 0x0

    move v7, v11

    .line 339
    .local v7, "sl":I
    const/4 v11, 0x0

    move v8, v11

    .line 340
    .local v8, "colon":I
    :goto_0
    move v11, v6

    move v12, v4

    if-ge v11, v12, :cond_0

    move v11, v6

    move v12, v5

    if-ge v11, v12, :cond_0

    .line 342
    move-object v11, v2

    move v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    move v9, v11

    .line 343
    .local v9, "cb":C
    move-object v11, v3

    move v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    move v10, v11

    .line 344
    .local v10, "ci":C
    move v11, v9

    move v12, v10

    if-eq v11, v12, :cond_3

    .line 345
    .line 351
    .end local v9    # "cb":C
    .end local v10    # "ci":C
    :cond_0
    move v11, v8

    if-lez v11, :cond_6

    move v11, v7

    move v12, v8

    const/4 v13, 0x2

    add-int/lit8 v12, v12, 0x2

    if-gt v11, v12, :cond_1

    move v11, v4

    move v12, v8

    const/4 v13, 0x2

    add-int/lit8 v12, v12, 0x2

    if-le v11, v12, :cond_1

    move-object v11, v2

    move v12, v8

    const/4 v13, 0x2

    add-int/lit8 v12, v12, 0x2

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x2f

    if-eq v11, v12, :cond_6

    .line 360
    :cond_1
    move-object v11, v2

    move v12, v7

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    move-object v2, v11

    .line 361
    move-object v11, v3

    move v12, v7

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    .line 366
    new-instance v11, Ljava/lang/StringBuilder;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v11

    .line 370
    .local v9, "sbuf":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    move v7, v11

    .line 371
    move-object v11, v2

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    move v14, v11

    move v11, v14

    move v12, v14

    move v4, v12

    move v6, v11

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, -0x1

    move v11, v6

    if-ltz v11, :cond_7

    .line 372
    move-object v11, v2

    move v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x2f

    if-ne v11, v12, :cond_2

    .line 373
    move-object v11, v9

    const-string/jumbo v12, "../"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    goto :goto_1

    .line 346
    .local v9, "cb":C
    .restart local v10    # "ci":C
    :cond_3
    move v11, v9

    const/16 v12, 0x2f

    if-ne v11, v12, :cond_4

    .line 347
    move v11, v6

    move v7, v11

    .line 348
    :cond_4
    move v11, v9

    const/16 v12, 0x3a

    if-ne v11, v12, :cond_5

    .line 349
    move v11, v6

    move v8, v11

    .line 340
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 364
    .end local v9    # "cb":C
    .end local v10    # "ci":C
    :cond_6
    move-object v11, v0

    move-object v0, v11

    .line 375
    .end local v0    # "in":Ljava/lang/String;
    :goto_2
    return-object v0

    .line 374
    .restart local v0    # "in":Ljava/lang/String;
    .local v9, "sbuf":Ljava/lang/StringBuilder;
    :cond_7
    move-object v11, v9

    move-object v12, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 375
    move-object v11, v9

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v0, v11

    goto :goto_2
.end method

.method public static setCurrentPath(Lgnu/text/Path;)V
    .locals 3

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "path":Lgnu/text/Path;
    sget-object v1, Lgnu/text/Path;->pathLocation:Ljava/lang/ThreadLocal;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public static toURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 7

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "str":Ljava/lang/String;
    move-object v3, v0

    :try_start_0
    invoke-static {v3}, Lgnu/text/Path;->uriSchemeSpecified(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 90
    invoke-static {}, Lgnu/text/Path;->currentPath()Lgnu/text/Path;

    move-result-object v3

    move-object v1, v3

    .line 91
    .local v1, "cur":Lgnu/text/Path;
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v3, v4}, Lgnu/text/Path;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v3

    move-object v2, v3

    .line 92
    .local v2, "path":Lgnu/text/Path;
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/text/Path;->isAbsolute()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/text/Path;->toURL()Ljava/net/URL;

    move-result-object v3

    move-object v0, v3

    .line 96
    .end local v0    # "str":Ljava/lang/String;
    .end local v1    # "cur":Lgnu/text/Path;
    .end local v2    # "path":Lgnu/text/Path;
    :goto_0
    return-object v0

    .line 94
    .restart local v0    # "str":Ljava/lang/String;
    .restart local v1    # "cur":Lgnu/text/Path;
    .restart local v2    # "path":Lgnu/text/Path;
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 96
    .end local v1    # "cur":Lgnu/text/Path;
    .end local v2    # "path":Lgnu/text/Path;
    :cond_1
    new-instance v3, Ljava/net/URL;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_0

    .line 98
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 100
    .local v1, "ex":Ljava/lang/Throwable;
    move-object v3, v1

    invoke-static {v3}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public static uriSchemeLength(Ljava/lang/String;)I
    .locals 6

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "uri":Ljava/lang/String;
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move v1, v4

    .line 113
    .local v1, "len":I
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_4

    .line 115
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v3, v4

    .line 116
    .local v3, "ch":C
    move v4, v3

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_0

    .line 117
    move v4, v2

    move v0, v4

    .line 123
    .end local v0    # "uri":Ljava/lang/String;
    .end local v3    # "ch":C
    :goto_1
    return v0

    .line 118
    .restart local v0    # "uri":Ljava/lang/String;
    .restart local v3    # "ch":C
    :cond_0
    move v4, v2

    if-nez v4, :cond_2

    move v4, v3

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_3

    .line 121
    :cond_1
    const/4 v4, -0x1

    move v0, v4

    goto :goto_1

    .line 118
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

    .line 113
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    .end local v3    # "ch":C
    :cond_4
    const/4 v4, -0x1

    move v0, v4

    goto :goto_1
.end method

.method public static uriSchemeSpecified(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v3, v0

    invoke-static {v3}, Lgnu/text/Path;->uriSchemeLength(Ljava/lang/String;)I

    move-result v3

    move v1, v3

    .line 132
    .local v1, "ulen":I
    move v3, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    sget-char v3, Ljava/io/File;->separatorChar:C

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_3

    .line 134
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v2, v3

    .line 135
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

    .line 138
    .end local v0    # "name":Ljava/lang/String;
    .end local v2    # "drive":C
    :goto_1
    return v0

    .line 135
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v2    # "drive":C
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 138
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

.method public static valueOf(Ljava/lang/Object;)Lgnu/text/Path;
    .locals 9

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v2, v0

    invoke-static {v2}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v2

    move-object v1, v2

    .line 79
    .local v1, "path":Lgnu/text/Path;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 80
    new-instance v2, Lgnu/mapping/WrongType;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const/4 v4, 0x0

    check-cast v4, Ljava/lang/String;

    const/4 v5, -0x4

    move-object v6, v0

    const-string/jumbo v7, "path"

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v2

    .line 81
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "arg":Ljava/lang/Object;
    return-object v0
.end method


# virtual methods
.method public delete()Z
    .locals 2

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lgnu/text/Path;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/text/Path;
    return v0
.end method

.method public exists()Z
    .locals 6

    .prologue
    .line 167
    move-object v1, p0

    .local v1, "this":Lgnu/text/Path;
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/text/Path;->getLastModified()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "this":Lgnu/text/Path;
    return v1

    .restart local v1    # "this":Lgnu/text/Path;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAbsolute()Lgnu/text/Path;
    .locals 3

    .prologue
    .line 385
    move-object v0, p0

    .local v0, "this":Lgnu/text/Path;
    move-object v1, v0

    sget-object v2, Lgnu/text/Path;->userDirPath:Lgnu/text/FilePath;

    if-ne v1, v2, :cond_0

    .line 386
    move-object v1, v0

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lgnu/text/Path;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v1

    move-object v0, v1

    .line 388
    .end local v0    # "this":Lgnu/text/Path;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/text/Path;
    :cond_0
    invoke-static {}, Lgnu/text/Path;->currentPath()Lgnu/text/Path;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lgnu/text/Path;->resolve(Lgnu/text/Path;)Lgnu/text/Path;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 2

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lgnu/text/Path;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/Path;
    return-object v0
.end method

.method public getCanonical()Lgnu/text/Path;
    .locals 2

    .prologue
    .line 393
    move-object v0, p0

    .local v0, "this":Lgnu/text/Path;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/Path;->getAbsolute()Lgnu/text/Path;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/Path;
    return-object v0
.end method

.method public getCharContent(Z)Ljava/lang/CharSequence;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "this":Lgnu/text/Path;
    move v1, p1

    .local v1, "ignoreEncodingErrors":Z
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public getContentLength()J
    .locals 3

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lgnu/text/Path;
    const-wide/16 v1, -0x1

    move-wide v0, v1

    .end local v0    # "this":Lgnu/text/Path;
    return-wide v0
.end method

.method public getDirectory()Lgnu/text/Path;
    .locals 3

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Lgnu/text/Path;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/Path;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    move-object v1, v0

    move-object v0, v1

    .line 201
    .end local v0    # "this":Lgnu/text/Path;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/text/Path;
    :cond_0
    move-object v1, v0

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lgnu/text/Path;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public getExtension()Ljava/lang/String;
    .locals 9

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Lgnu/text/Path;
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/text/Path;->getPath()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 236
    .local v1, "p":Ljava/lang/String;
    move-object v6, v1

    if-nez v6, :cond_0

    .line 237
    const/4 v6, 0x0

    move-object v0, v6

    .line 255
    .end local v0    # "this":Lgnu/text/Path;
    :goto_0
    return-object v0

    .line 238
    .restart local v0    # "this":Lgnu/text/Path;
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v2, v6

    .line 239
    .local v2, "len":I
    move v6, v2

    move v3, v6

    .line 241
    .local v3, "i":I
    :goto_1
    add-int/lit8 v3, v3, -0x1

    move v6, v3

    if-gtz v6, :cond_1

    .line 242
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 243
    :cond_1
    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v4, v6

    .line 244
    .local v4, "c":C
    const/4 v6, 0x0

    move v5, v6

    .line 245
    .local v5, "sawDot":Z
    move v6, v4

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_2

    .line 247
    move-object v6, v1

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v4, v6

    .line 248
    const/4 v6, 0x1

    move v5, v6

    .line 250
    :cond_2
    move v6, v4

    const/16 v7, 0x2f

    if-eq v6, v7, :cond_3

    move-object v6, v0

    instance-of v6, v6, Lgnu/text/FilePath;

    if-eqz v6, :cond_4

    move v6, v4

    sget-char v7, Ljava/io/File;->separatorChar:C

    if-ne v6, v7, :cond_4

    .line 253
    :cond_3
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 254
    :cond_4
    move v6, v5

    if-eqz v6, :cond_5

    .line 255
    move-object v6, v1

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 256
    :cond_5
    goto :goto_1
.end method

.method public getFragment()Ljava/lang/String;
    .locals 2

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Lgnu/text/Path;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/Path;
    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lgnu/text/Path;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/Path;
    return-object v0
.end method

.method public getLast()Ljava/lang/String;
    .locals 9

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Lgnu/text/Path;
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/text/Path;->getPath()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 212
    .local v1, "p":Ljava/lang/String;
    move-object v6, v1

    if-nez v6, :cond_0

    .line 213
    const/4 v6, 0x0

    move-object v0, v6

    .line 228
    .end local v0    # "this":Lgnu/text/Path;
    :goto_0
    return-object v0

    .line 214
    .restart local v0    # "this":Lgnu/text/Path;
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v2, v6

    .line 215
    .local v2, "len":I
    move v6, v2

    move v3, v6

    .line 216
    .local v3, "end":I
    move v6, v2

    move v4, v6

    .line 218
    .local v4, "i":I
    :goto_1
    add-int/lit8 v4, v4, -0x1

    move v6, v4

    if-gtz v6, :cond_1

    .line 219
    const-string/jumbo v6, ""

    move-object v0, v6

    goto :goto_0

    .line 220
    :cond_1
    move-object v6, v1

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v5, v6

    .line 221
    .local v5, "c":C
    move v6, v5

    const/16 v7, 0x2f

    if-eq v6, v7, :cond_2

    move-object v6, v0

    instance-of v6, v6, Lgnu/text/FilePath;

    if-eqz v6, :cond_3

    move v6, v5

    sget-char v7, Ljava/io/File;->separatorChar:C

    if-ne v6, v7, :cond_3

    .line 225
    :cond_2
    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v7, v2

    if-ne v6, v7, :cond_4

    .line 226
    move v6, v4

    move v3, v6

    .line 230
    :cond_3
    goto :goto_1

    .line 228
    :cond_4
    move-object v6, v1

    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    goto :goto_0
.end method

.method public abstract getLastModified()J
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "this":Lgnu/text/Path;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/Path;
    return-object v0
.end method

.method public getParent()Lgnu/text/Path;
    .locals 3

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Lgnu/text/Path;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/text/Path;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, ".."

    :goto_0
    invoke-virtual {v1, v2}, Lgnu/text/Path;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/Path;
    return-object v0

    .restart local v0    # "this":Lgnu/text/Path;
    :cond_0
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public getPort()I
    .locals 2

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Lgnu/text/Path;
    const/4 v1, -0x1

    move v0, v1

    .end local v0    # "this":Lgnu/text/Path;
    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 2

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Lgnu/text/Path;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/Path;
    return-object v0
.end method

.method public abstract getScheme()Ljava/lang/String;
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lgnu/text/Path;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/Path;
    return-object v0
.end method

.method public abstract isAbsolute()Z
.end method

.method public isDirectory()Z
    .locals 7

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lgnu/text/Path;
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 150
    .local v1, "str":Ljava/lang/String;
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move v2, v4

    .line 151
    .local v2, "len":I
    move v4, v2

    if-lez v4, :cond_1

    .line 153
    move-object v4, v1

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v3, v4

    .line 154
    .local v3, "last":C
    move v4, v3

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_0

    move v4, v3

    sget-char v5, Ljava/io/File;->separatorChar:C

    if-ne v4, v5, :cond_1

    .line 155
    :cond_0
    const/4 v4, 0x1

    move v0, v4

    .line 157
    .end local v0    # "this":Lgnu/text/Path;
    .end local v3    # "last":C
    :goto_0
    return v0

    .restart local v0    # "this":Lgnu/text/Path;
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public abstract openInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract openOutputStream()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public openReader(Z)Ljava/io/Reader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "this":Lgnu/text/Path;
    move v1, p1

    .local v1, "ignoreEncodingErrors":Z
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public openWriter()Ljava/io/Writer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    move-object v0, p0

    .local v0, "this":Lgnu/text/Path;
    new-instance v1, Ljava/io/OutputStreamWriter;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/text/Path;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/Path;
    return-object v0
.end method

.method public resolve(Lgnu/text/Path;)Lgnu/text/Path;
    .locals 4

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Lgnu/text/Path;
    move-object v1, p1

    .local v1, "relative":Lgnu/text/Path;
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/text/Path;->isAbsolute()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    move-object v2, v1

    move-object v0, v2

    .line 291
    .end local v0    # "this":Lgnu/text/Path;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/text/Path;
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/text/Path;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public abstract resolve(Ljava/lang/String;)Lgnu/text/Path;
.end method

.method public final toURI()Ljava/net/URI;
    .locals 2

    .prologue
    .line 279
    move-object v0, p0

    .local v0, "this":Lgnu/text/Path;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/Path;->toUri()Ljava/net/URI;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/Path;
    return-object v0
.end method

.method public toURIString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Lgnu/text/Path;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/Path;->toUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/Path;
    return-object v0
.end method

.method public abstract toURL()Ljava/net/URL;
.end method

.method public abstract toUri()Ljava/net/URI;
.end method
