.class public Lgnu/kawa/servlet/ServletPrinter;
.super Lgnu/kawa/xml/HttpPrinter;
.source "ServletPrinter.java"


# instance fields
.field hctx:Lgnu/kawa/servlet/HttpRequestContext;


# direct methods
.method public constructor <init>(Lgnu/kawa/servlet/HttpRequestContext;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/servlet/ServletPrinter;
    move-object v1, p1

    .local v1, "hctx":Lgnu/kawa/servlet/HttpRequestContext;
    move v2, p2

    .local v2, "bufSize":I
    move-object v3, v0

    new-instance v4, Lgnu/kawa/servlet/HttpOutputStream;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Lgnu/kawa/servlet/HttpOutputStream;-><init>(Lgnu/kawa/servlet/HttpRequestContext;I)V

    invoke-direct {v3, v4}, Lgnu/kawa/xml/HttpPrinter;-><init>(Ljava/io/OutputStream;)V

    .line 21
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/kawa/servlet/ServletPrinter;->hctx:Lgnu/kawa/servlet/HttpRequestContext;

    .line 22
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/servlet/ServletPrinter;
    move-object v1, p1

    .local v1, "label":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/String;
    move-object v8, v1

    const-string/jumbo v9, "Content-type"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 28
    move-object v8, v0

    move-object v9, v2

    iput-object v9, v8, Lgnu/kawa/xml/HttpPrinter;->sawContentType:Ljava/lang/String;

    .line 29
    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/servlet/ServletPrinter;->hctx:Lgnu/kawa/servlet/HttpRequestContext;

    move-object v9, v2

    invoke-virtual {v8, v9}, Lgnu/kawa/servlet/HttpRequestContext;->setContentType(Ljava/lang/String;)V

    .line 59
    :goto_0
    return-void

    .line 31
    :cond_0
    move-object v8, v1

    const-string/jumbo v9, "Status"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 33
    move-object v8, v2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    move v3, v8

    .line 34
    .local v3, "lval":I
    const/4 v8, 0x0

    move v4, v8

    .line 36
    .local v4, "code":I
    const/4 v8, 0x0

    move v5, v8

    .local v5, "i":I
    :goto_1
    move v8, v5

    move v9, v3

    if-ge v8, v9, :cond_1

    .line 38
    move v8, v5

    move v9, v3

    if-lt v8, v9, :cond_2

    .line 40
    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/servlet/ServletPrinter;->hctx:Lgnu/kawa/servlet/HttpRequestContext;

    move v9, v4

    iput v9, v8, Lgnu/kawa/servlet/HttpRequestContext;->statusCode:I

    .line 41
    .line 56
    :cond_1
    :goto_2
    goto :goto_0

    .line 43
    :cond_2
    move-object v8, v2

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v6, v8

    .line 44
    .local v6, "ch":C
    move v8, v6

    const/16 v9, 0xa

    invoke-static {v8, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    move v7, v8

    .line 45
    .local v7, "digit":I
    move v8, v7

    if-ltz v8, :cond_3

    .line 46
    const/16 v8, 0xa

    move v9, v4

    mul-int/2addr v8, v9

    move v9, v7

    add-int/2addr v8, v9

    move v4, v8

    .line 36
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 49
    :cond_3
    move v8, v6

    const/16 v9, 0x20

    if-ne v8, v9, :cond_4

    .line 50
    add-int/lit8 v5, v5, 0x1

    .line 51
    :cond_4
    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/servlet/ServletPrinter;->hctx:Lgnu/kawa/servlet/HttpRequestContext;

    move v9, v4

    iput v9, v8, Lgnu/kawa/servlet/HttpRequestContext;->statusCode:I

    .line 52
    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/servlet/ServletPrinter;->hctx:Lgnu/kawa/servlet/HttpRequestContext;

    move-object v9, v2

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lgnu/kawa/servlet/HttpRequestContext;->statusReasonPhrase:Ljava/lang/String;

    .line 53
    goto :goto_2

    .line 58
    .end local v3    # "lval":I
    .end local v4    # "code":I
    .end local v5    # "i":I
    .end local v6    # "ch":C
    .end local v7    # "digit":I
    :cond_5
    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/servlet/ServletPrinter;->hctx:Lgnu/kawa/servlet/HttpRequestContext;

    move-object v9, v1

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Lgnu/kawa/servlet/HttpRequestContext;->setResponseHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public printHeaders()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public reset(Z)Z
    .locals 5

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/servlet/ServletPrinter;
    move v1, p1

    .local v1, "headersAlso":Z
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/servlet/ServletPrinter;->ostream:Ljava/io/OutputStream;

    check-cast v2, Lgnu/kawa/servlet/HttpOutputStream;

    invoke-virtual {v2}, Lgnu/kawa/servlet/HttpOutputStream;->reset()Z

    move-result v2

    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Lgnu/kawa/xml/HttpPrinter;->reset(Z)Z

    move-result v3

    and-int/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Lgnu/kawa/servlet/ServletPrinter;
    return v0
.end method
