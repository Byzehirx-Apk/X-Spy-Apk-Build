.class public Lgnu/kawa/util/FixupHtmlToc;
.super Ljava/lang/Object;
.source "FixupHtmlToc.java"


# static fields
.field static argFiles:[Lgnu/kawa/util/FileInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/FixupHtmlToc;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "args":[Ljava/lang/String;
    move-object v3, v0

    :try_start_0
    array-length v3, v3

    new-array v3, v3, [Lgnu/kawa/util/FileInfo;

    sput-object v3, Lgnu/kawa/util/FixupHtmlToc;->argFiles:[Lgnu/kawa/util/FileInfo;

    .line 37
    const/4 v3, 0x0

    move v1, v3

    .local v1, "i":I
    :goto_0
    move v3, v1

    move-object v4, v0

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 39
    new-instance v3, Ljava/io/File;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move v6, v1

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lgnu/kawa/util/FileInfo;->find(Ljava/io/File;)Lgnu/kawa/util/FileInfo;

    move-result-object v3

    move-object v2, v3

    .line 40
    .local v2, "info":Lgnu/kawa/util/FileInfo;
    move-object v3, v2

    const/4 v4, 0x1

    iput-boolean v4, v3, Lgnu/kawa/util/FileInfo;->writeNeeded:Z

    .line 41
    sget-object v3, Lgnu/kawa/util/FixupHtmlToc;->argFiles:[Lgnu/kawa/util/FileInfo;

    move v4, v1

    move-object v5, v2

    aput-object v5, v3, v4

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    .end local v2    # "info":Lgnu/kawa/util/FileInfo;
    :cond_0
    const/4 v3, 0x0

    move v1, v3

    :goto_1
    move v3, v1

    move-object v4, v0

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 46
    sget-object v3, Lgnu/kawa/util/FixupHtmlToc;->argFiles:[Lgnu/kawa/util/FileInfo;

    move v4, v1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lgnu/kawa/util/FileInfo;->scan()V

    .line 47
    sget-object v3, Lgnu/kawa/util/FixupHtmlToc;->argFiles:[Lgnu/kawa/util/FileInfo;

    move v4, v1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lgnu/kawa/util/FileInfo;->write()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 54
    .line 55
    .end local v1    # "i":I
    :cond_1
    :goto_2
    return-void

    .line 50
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 52
    .local v1, "ex":Ljava/lang/Throwable;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "caught "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 53
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method
