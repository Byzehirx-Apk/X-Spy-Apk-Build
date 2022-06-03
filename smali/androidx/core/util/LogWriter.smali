.class public Landroidx/core/util/LogWriter;
.super Ljava/io/Writer;
.source "LogWriter.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mBuilder:Ljava/lang/StringBuilder;

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Landroidx/core/util/LogWriter;
    move-object v1, p1

    .local v1, "tag":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljava/io/Writer;-><init>()V

    .line 35
    move-object v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/16 v5, 0x80

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v3, v2, Landroidx/core/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    .line 44
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/util/LogWriter;->mTag:Ljava/lang/String;

    .line 45
    return-void
.end method

.method private flushBuilder()V
    .locals 4

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Landroidx/core/util/LogWriter;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 69
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/util/LogWriter;->mTag:Ljava/lang/String;

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 70
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 72
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Landroidx/core/util/LogWriter;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/core/util/LogWriter;->flushBuilder()V

    .line 49
    return-void
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Landroidx/core/util/LogWriter;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/core/util/LogWriter;->flushBuilder()V

    .line 53
    return-void
.end method

.method public write([CII)V
    .locals 9

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Landroidx/core/util/LogWriter;
    move-object v1, p1

    .local v1, "buf":[C
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "count":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    .line 57
    move-object v6, v1

    move v7, v2

    move v8, v4

    add-int/2addr v7, v8

    aget-char v6, v6, v7

    move v5, v6

    .line 58
    .local v5, "c":C
    move v6, v5

    const/16 v7, 0xa

    if-ne v6, v7, :cond_0

    .line 59
    move-object v6, v0

    invoke-direct {v6}, Landroidx/core/util/LogWriter;->flushBuilder()V

    .line 56
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 62
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    move v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    goto :goto_1

    .line 65
    .end local v5    # "c":C
    :cond_1
    return-void
.end method
