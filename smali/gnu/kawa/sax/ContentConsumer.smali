.class public Lgnu/kawa/sax/ContentConsumer;
.super Ljava/lang/Object;
.source "ContentConsumer.java"

# interfaces
.implements Lgnu/lists/Consumer;


# instance fields
.field attrLocalName:Ljava/lang/String;

.field attrQName:Ljava/lang/String;

.field attrURI:Ljava/lang/String;

.field attributes:Lorg/xml/sax/helpers/AttributesImpl;

.field chBuffer:[C

.field inStartTag:I

.field names:[Ljava/lang/String;

.field nesting:I

.field out:Lorg/xml/sax/ContentHandler;

.field strBuffer:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/sax/ContentConsumer;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 19
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lgnu/kawa/sax/ContentConsumer;->nesting:I

    .line 20
    move-object v1, v0

    const/16 v2, 0xf

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v1, Lgnu/kawa/sax/ContentConsumer;->names:[Ljava/lang/String;

    .line 22
    move-object v1, v0

    new-instance v2, Lorg/xml/sax/helpers/AttributesImpl;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    iput-object v2, v1, Lgnu/kawa/sax/ContentConsumer;->attributes:Lorg/xml/sax/helpers/AttributesImpl;

    .line 25
    move-object v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0xc8

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v2, v1, Lgnu/kawa/sax/ContentConsumer;->strBuffer:Ljava/lang/StringBuilder;

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;)V
    .locals 7

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/sax/ContentConsumer;
    move-object v1, p1

    .local v1, "handler":Lorg/xml/sax/ContentHandler;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 19
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lgnu/kawa/sax/ContentConsumer;->nesting:I

    .line 20
    move-object v2, v0

    const/16 v3, 0xf

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v2, Lgnu/kawa/sax/ContentConsumer;->names:[Ljava/lang/String;

    .line 22
    move-object v2, v0

    new-instance v3, Lorg/xml/sax/helpers/AttributesImpl;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    iput-object v3, v2, Lgnu/kawa/sax/ContentConsumer;->attributes:Lorg/xml/sax/helpers/AttributesImpl;

    .line 25
    move-object v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/16 v5, 0xc8

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v3, v2, Lgnu/kawa/sax/ContentConsumer;->strBuffer:Ljava/lang/StringBuilder;

    .line 38
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/kawa/sax/ContentConsumer;->out:Lorg/xml/sax/ContentHandler;

    .line 39
    return-void
.end method


# virtual methods
.method public append(C)Lgnu/kawa/sax/ContentConsumer;
    .locals 4

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/sax/ContentConsumer;
    move v1, p1

    .local v1, "c":C
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/kawa/sax/ContentConsumer;->write(I)V

    .line 251
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/sax/ContentConsumer;
    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;)Lgnu/kawa/sax/ContentConsumer;
    .locals 6

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/sax/ContentConsumer;
    move-object v1, p1

    .local v1, "csq":Ljava/lang/CharSequence;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 256
    const-string/jumbo v2, "null"

    move-object v1, v2

    .line 257
    :cond_0
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lgnu/kawa/sax/ContentConsumer;->write(Ljava/lang/CharSequence;II)V

    .line 258
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/sax/ContentConsumer;
    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Lgnu/kawa/sax/ContentConsumer;
    .locals 8

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/sax/ContentConsumer;
    move-object v1, p1

    .local v1, "csq":Ljava/lang/CharSequence;
    move v2, p2

    .local v2, "start":I
    move v3, p3

    .local v3, "end":I
    move-object v4, v1

    if-nez v4, :cond_0

    .line 263
    const-string/jumbo v4, "null"

    move-object v1, v4

    .line 264
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lgnu/kawa/sax/ContentConsumer;->write(Ljava/lang/CharSequence;II)V

    .line 265
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/sax/ContentConsumer;
    return-object v0
.end method

.method public bridge synthetic append(C)Lgnu/lists/Consumer;
    .locals 4

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/sax/ContentConsumer;
    move v1, p1

    .local v1, "x0":C
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/kawa/sax/ContentConsumer;->append(C)Lgnu/kawa/sax/ContentConsumer;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/sax/ContentConsumer;
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;
    .locals 4

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/sax/ContentConsumer;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/kawa/sax/ContentConsumer;->append(Ljava/lang/CharSequence;)Lgnu/kawa/sax/ContentConsumer;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/sax/ContentConsumer;
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;
    .locals 8

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/sax/ContentConsumer;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/CharSequence;
    move v2, p2

    .local v2, "x1":I
    move v3, p3

    .local v3, "x2":I
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lgnu/kawa/sax/ContentConsumer;->append(Ljava/lang/CharSequence;II)Lgnu/kawa/sax/ContentConsumer;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/sax/ContentConsumer;
    return-object v0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/sax/ContentConsumer;
    move v1, p1

    .local v1, "x0":C
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/kawa/sax/ContentConsumer;->append(C)Lgnu/kawa/sax/ContentConsumer;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/sax/ContentConsumer;
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/sax/ContentConsumer;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/kawa/sax/ContentConsumer;->append(Ljava/lang/CharSequence;)Lgnu/kawa/sax/ContentConsumer;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/sax/ContentConsumer;
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/sax/ContentConsumer;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/CharSequence;
    move v2, p2

    .local v2, "x1":I
    move v3, p3

    .local v3, "x2":I
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lgnu/kawa/sax/ContentConsumer;->append(Ljava/lang/CharSequence;II)Lgnu/kawa/sax/ContentConsumer;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/sax/ContentConsumer;
    return-object v0
.end method

.method public endAttribute()V
    .locals 7

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/sax/ContentConsumer;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/sax/ContentConsumer;->attributes:Lorg/xml/sax/helpers/AttributesImpl;

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/sax/ContentConsumer;->attrURI:Ljava/lang/String;

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/sax/ContentConsumer;->attrLocalName:Ljava/lang/String;

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/sax/ContentConsumer;->attrQName:Ljava/lang/String;

    const-string/jumbo v5, "CDATA"

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/sax/ContentConsumer;->strBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/sax/ContentConsumer;->strBuffer:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 113
    move-object v1, v0

    const/4 v2, 0x1

    iput v2, v1, Lgnu/kawa/sax/ContentConsumer;->inStartTag:I

    .line 114
    return-void
.end method

.method public endDocument()V
    .locals 5

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/sax/ContentConsumer;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lgnu/kawa/sax/ContentConsumer;->out:Lorg/xml/sax/ContentHandler;

    invoke-interface {v2}, Lorg/xml/sax/ContentHandler;->endDocument()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .line 138
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 136
    .local v1, "ex":Lorg/xml/sax/SAXException;
    move-object v2, v0

    const-string/jumbo v3, "endDocument"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/sax/ContentConsumer;->error(Ljava/lang/String;Lorg/xml/sax/SAXException;)V

    goto :goto_0
.end method

.method public endElement()V
    .locals 10

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/sax/ContentConsumer;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/kawa/sax/ContentConsumer;->endStartTag()V

    .line 143
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/kawa/sax/ContentConsumer;->flushStrBuffer()V

    .line 144
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget v4, v4, Lgnu/kawa/sax/ContentConsumer;->nesting:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lgnu/kawa/sax/ContentConsumer;->nesting:I

    .line 145
    const/4 v3, 0x3

    move-object v4, v0

    iget v4, v4, Lgnu/kawa/sax/ContentConsumer;->nesting:I

    mul-int/2addr v3, v4

    move v1, v3

    .line 148
    .local v1, "i":I
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lgnu/kawa/sax/ContentConsumer;->out:Lorg/xml/sax/ContentHandler;

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/sax/ContentConsumer;->names:[Ljava/lang/String;

    move v5, v1

    aget-object v4, v4, v5

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/sax/ContentConsumer;->names:[Ljava/lang/String;

    move v6, v1

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    aget-object v5, v5, v6

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/sax/ContentConsumer;->names:[Ljava/lang/String;

    move v7, v1

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    aget-object v6, v6, v7

    invoke-interface {v3, v4, v5, v6}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .line 154
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/sax/ContentConsumer;->names:[Ljava/lang/String;

    move v4, v1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 155
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/sax/ContentConsumer;->names:[Ljava/lang/String;

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 156
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/sax/ContentConsumer;->names:[Ljava/lang/String;

    move v4, v1

    const/4 v5, 0x2

    add-int/lit8 v4, v4, 0x2

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 157
    return-void

    .line 150
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 152
    .local v2, "ex":Lorg/xml/sax/SAXException;
    move-object v3, v0

    const-string/jumbo v4, "endElement"

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/sax/ContentConsumer;->error(Ljava/lang/String;Lorg/xml/sax/SAXException;)V

    goto :goto_0
.end method

.method public endStartTag()V
    .locals 9

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/sax/ContentConsumer;
    move-object v3, v0

    iget v3, v3, Lgnu/kawa/sax/ContentConsumer;->inStartTag:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 49
    .line 61
    :goto_0
    return-void

    .line 50
    :cond_0
    const/4 v3, 0x3

    move-object v4, v0

    iget v4, v4, Lgnu/kawa/sax/ContentConsumer;->nesting:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v3, v4

    move v1, v3

    .line 53
    .local v1, "i":I
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lgnu/kawa/sax/ContentConsumer;->out:Lorg/xml/sax/ContentHandler;

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/sax/ContentConsumer;->names:[Ljava/lang/String;

    move v5, v1

    aget-object v4, v4, v5

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/sax/ContentConsumer;->names:[Ljava/lang/String;

    move v6, v1

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    aget-object v5, v5, v6

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/sax/ContentConsumer;->names:[Ljava/lang/String;

    move v7, v1

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    aget-object v6, v6, v7

    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/sax/ContentConsumer;->attributes:Lorg/xml/sax/helpers/AttributesImpl;

    invoke-interface {v3, v4, v5, v6, v7}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    :goto_1
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/sax/ContentConsumer;->attributes:Lorg/xml/sax/helpers/AttributesImpl;

    invoke-virtual {v3}, Lorg/xml/sax/helpers/AttributesImpl;->clear()V

    .line 60
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lgnu/kawa/sax/ContentConsumer;->inStartTag:I

    .line 61
    goto :goto_0

    .line 55
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 57
    .local v2, "ex":Lorg/xml/sax/SAXException;
    move-object v3, v0

    const-string/jumbo v4, "startElement"

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/sax/ContentConsumer;->error(Ljava/lang/String;Lorg/xml/sax/SAXException;)V

    goto :goto_1
.end method

.method public error(Ljava/lang/String;Lorg/xml/sax/SAXException;)V
    .locals 8

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/sax/ContentConsumer;
    move-object v1, p1

    .local v1, "method":Ljava/lang/String;
    move-object v2, p2

    .local v2, "ex":Lorg/xml/sax/SAXException;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "caught "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public finalize()V
    .locals 2

    .prologue
    .line 327
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/sax/ContentConsumer;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/kawa/sax/ContentConsumer;->flushStrBuffer()V

    .line 328
    return-void
.end method

.method flushStrBuffer()V
    .locals 9

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/sax/ContentConsumer;
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/sax/ContentConsumer;->strBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 163
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/sax/ContentConsumer;->chBuffer:[C

    if-nez v4, :cond_0

    .line 164
    move-object v4, v0

    const/16 v5, 0xc8

    new-array v5, v5, [C

    iput-object v5, v4, Lgnu/kawa/sax/ContentConsumer;->chBuffer:[C

    .line 167
    :cond_0
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lgnu/kawa/sax/ContentConsumer;->strBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    move v1, v4

    .line 168
    .local v1, "slen":I
    const/4 v4, 0x0

    move v2, v4

    .line 171
    .local v2, "start":I
    :goto_0
    move v4, v1

    move v5, v2

    sub-int/2addr v4, v5

    move v3, v4

    .line 172
    .local v3, "len":I
    move v4, v3

    if-gtz v4, :cond_2

    .line 173
    .line 180
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/sax/ContentConsumer;->strBuffer:Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 185
    .line 187
    .end local v1    # "slen":I
    .end local v2    # "start":I
    .end local v3    # "len":I
    :cond_1
    :goto_1
    return-void

    .line 174
    .restart local v1    # "slen":I
    .restart local v2    # "start":I
    .restart local v3    # "len":I
    :cond_2
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/sax/ContentConsumer;->chBuffer:[C

    array-length v5, v5

    if-le v4, v5, :cond_3

    .line 175
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/sax/ContentConsumer;->chBuffer:[C

    array-length v4, v4

    move v3, v4

    .line 176
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/sax/ContentConsumer;->strBuffer:Ljava/lang/StringBuilder;

    move v5, v2

    move v6, v2

    move v7, v3

    add-int/2addr v6, v7

    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/sax/ContentConsumer;->chBuffer:[C

    move v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 177
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/sax/ContentConsumer;->out:Lorg/xml/sax/ContentHandler;

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/sax/ContentConsumer;->chBuffer:[C

    const/4 v6, 0x0

    move v7, v3

    invoke-interface {v4, v5, v6, v7}, Lorg/xml/sax/ContentHandler;->characters([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    move v4, v2

    move v5, v3

    add-int/2addr v4, v5

    move v2, v4

    .line 179
    goto :goto_0

    .line 182
    .end local v1    # "slen":I
    .end local v2    # "start":I
    .end local v3    # "len":I
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 184
    .local v1, "ex":Lorg/xml/sax/SAXException;
    move-object v4, v0

    const-string/jumbo v5, "characters"

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Lgnu/kawa/sax/ContentConsumer;->error(Ljava/lang/String;Lorg/xml/sax/SAXException;)V

    goto :goto_1
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 2

    .prologue
    .line 342
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/sax/ContentConsumer;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/sax/ContentConsumer;->out:Lorg/xml/sax/ContentHandler;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/sax/ContentConsumer;
    return-object v0
.end method

.method public ignoring()Z
    .locals 2

    .prologue
    .line 332
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/sax/ContentConsumer;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/sax/ContentConsumer;
    return v0
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 4

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/sax/ContentConsumer;
    move-object v1, p1

    .local v1, "handler":Lorg/xml/sax/ContentHandler;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/kawa/sax/ContentConsumer;->out:Lorg/xml/sax/ContentHandler;

    .line 338
    return-void
.end method

.method public startAttribute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/sax/ContentConsumer;
    move-object v1, p1

    .local v1, "attrType":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/mapping/Symbol;

    invoke-virtual {v3}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lgnu/kawa/sax/ContentConsumer;->attrURI:Ljava/lang/String;

    .line 103
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/mapping/Symbol;

    invoke-virtual {v3}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lgnu/kawa/sax/ContentConsumer;->attrLocalName:Ljava/lang/String;

    .line 104
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lgnu/kawa/sax/ContentConsumer;->attrQName:Ljava/lang/String;

    .line 105
    move-object v2, v0

    const/4 v3, 0x2

    iput v3, v2, Lgnu/kawa/sax/ContentConsumer;->inStartTag:I

    .line 106
    return-void
.end method

.method public startDocument()V
    .locals 5

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/sax/ContentConsumer;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lgnu/kawa/sax/ContentConsumer;->out:Lorg/xml/sax/ContentHandler;

    invoke-interface {v2}, Lorg/xml/sax/ContentHandler;->startDocument()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .line 126
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 124
    .local v1, "ex":Lorg/xml/sax/SAXException;
    move-object v2, v0

    const-string/jumbo v3, "startDocument"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/sax/ContentConsumer;->error(Ljava/lang/String;Lorg/xml/sax/SAXException;)V

    goto :goto_0
.end method

.method public startElement(Ljava/lang/Object;)V
    .locals 12

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/sax/ContentConsumer;
    move-object v1, p1

    .local v1, "type":Ljava/lang/Object;
    move-object v6, v0

    iget v6, v6, Lgnu/kawa/sax/ContentConsumer;->inStartTag:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 66
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/kawa/sax/ContentConsumer;->endStartTag()V

    .line 67
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/kawa/sax/ContentConsumer;->flushStrBuffer()V

    .line 68
    const/4 v6, 0x3

    move-object v7, v0

    iget v7, v7, Lgnu/kawa/sax/ContentConsumer;->nesting:I

    mul-int/2addr v6, v7

    move v2, v6

    .line 69
    .local v2, "i":I
    move v6, v2

    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/sax/ContentConsumer;->names:[Ljava/lang/String;

    array-length v7, v7

    if-lt v6, v7, :cond_1

    .line 71
    const/4 v6, 0x2

    move v7, v2

    mul-int/2addr v6, v7

    new-array v6, v6, [Ljava/lang/String;

    move-object v3, v6

    .line 72
    .local v3, "tmp":[Ljava/lang/String;
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/sax/ContentConsumer;->names:[Ljava/lang/String;

    const/4 v7, 0x0

    move-object v8, v3

    const/4 v9, 0x0

    move v10, v2

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lgnu/kawa/sax/ContentConsumer;->names:[Ljava/lang/String;

    .line 76
    .end local v3    # "tmp":[Ljava/lang/String;
    :cond_1
    move-object v6, v1

    instance-of v6, v6, Lgnu/mapping/Symbol;

    if-eqz v6, :cond_2

    .line 78
    move-object v6, v1

    check-cast v6, Lgnu/mapping/Symbol;

    move-object v5, v6

    .line 79
    .local v5, "sym":Lgnu/mapping/Symbol;
    move-object v6, v5

    invoke-virtual {v6}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 80
    .local v3, "namespaceURI":Ljava/lang/String;
    move-object v6, v5

    invoke-virtual {v6}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 93
    .end local v5    # "sym":Lgnu/mapping/Symbol;
    .local v4, "localName":Ljava/lang/String;
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/sax/ContentConsumer;->names:[Ljava/lang/String;

    move v7, v2

    move-object v8, v3

    aput-object v8, v6, v7

    .line 94
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/sax/ContentConsumer;->names:[Ljava/lang/String;

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object v8, v4

    aput-object v8, v6, v7

    .line 95
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/sax/ContentConsumer;->names:[Ljava/lang/String;

    move v7, v2

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 96
    move-object v6, v0

    const/4 v7, 0x1

    iput v7, v6, Lgnu/kawa/sax/ContentConsumer;->inStartTag:I

    .line 97
    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Lgnu/kawa/sax/ContentConsumer;->nesting:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lgnu/kawa/sax/ContentConsumer;->nesting:I

    .line 98
    return-void

    .line 82
    .end local v3    # "namespaceURI":Ljava/lang/String;
    .end local v4    # "localName":Ljava/lang/String;
    :cond_2
    move-object v6, v1

    instance-of v6, v6, Lgnu/xml/XName;

    if-eqz v6, :cond_3

    .line 84
    move-object v6, v1

    check-cast v6, Lgnu/xml/XName;

    move-object v5, v6

    .line 85
    .local v5, "sym":Lgnu/xml/XName;
    move-object v6, v5

    invoke-virtual {v6}, Lgnu/xml/XName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 86
    .restart local v3    # "namespaceURI":Ljava/lang/String;
    move-object v6, v5

    invoke-virtual {v6}, Lgnu/xml/XName;->getLocalName()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 87
    .restart local v4    # "localName":Ljava/lang/String;
    goto :goto_0

    .line 90
    .end local v3    # "namespaceURI":Ljava/lang/String;
    .end local v4    # "localName":Ljava/lang/String;
    .end local v5    # "sym":Lgnu/xml/XName;
    :cond_3
    const-string/jumbo v6, ""

    move-object v3, v6

    .line 91
    .restart local v3    # "namespaceURI":Ljava/lang/String;
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .restart local v4    # "localName":Ljava/lang/String;
    goto :goto_0
.end method

.method public write(I)V
    .locals 5

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/sax/ContentConsumer;
    move v1, p1

    .local v1, "v":I
    move-object v2, v0

    iget v2, v2, Lgnu/kawa/sax/ContentConsumer;->inStartTag:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 212
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/sax/ContentConsumer;->endStartTag()V

    .line 213
    :cond_0
    move v2, v1

    const/high16 v3, 0x10000

    if-lt v2, v3, :cond_1

    .line 215
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/sax/ContentConsumer;->strBuffer:Ljava/lang/StringBuilder;

    move v3, v1

    const/high16 v4, 0x10000

    sub-int/2addr v3, v4

    const/16 v4, 0xa

    shr-int/lit8 v3, v3, 0xa

    const v4, 0xd800

    add-int/2addr v3, v4

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 216
    move v2, v1

    const/16 v3, 0x3ff

    and-int/lit16 v2, v2, 0x3ff

    const v3, 0xdc00

    add-int/2addr v2, v3

    move v1, v2

    .line 218
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/sax/ContentConsumer;->strBuffer:Ljava/lang/StringBuilder;

    move v3, v1

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 219
    return-void
.end method

.method public write(Ljava/lang/CharSequence;II)V
    .locals 8

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/sax/ContentConsumer;
    move-object v1, p1

    .local v1, "str":Ljava/lang/CharSequence;
    move v2, p2

    .local v2, "start":I
    move v3, p3

    .local v3, "end":I
    move-object v4, v0

    iget v4, v4, Lgnu/kawa/sax/ContentConsumer;->inStartTag:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 235
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/kawa/sax/ContentConsumer;->endStartTag()V

    .line 238
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/sax/ContentConsumer;->strBuffer:Ljava/lang/StringBuilder;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 245
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/sax/ContentConsumer;
    move-object v1, p1

    .local v1, "v":Ljava/lang/String;
    move-object v2, v0

    iget v2, v2, Lgnu/kawa/sax/ContentConsumer;->inStartTag:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 224
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/sax/ContentConsumer;->endStartTag()V

    .line 225
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/sax/ContentConsumer;->strBuffer:Ljava/lang/StringBuilder;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 226
    return-void
.end method

.method public write([CII)V
    .locals 9

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/sax/ContentConsumer;
    move-object v1, p1

    .local v1, "buf":[C
    move v2, p2

    .local v2, "off":I
    move v3, p3

    .local v3, "len":I
    move-object v5, v0

    iget v5, v5, Lgnu/kawa/sax/ContentConsumer;->inStartTag:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 192
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/kawa/sax/ContentConsumer;->endStartTag()V

    .line 193
    :cond_0
    move-object v5, v0

    iget v5, v5, Lgnu/kawa/sax/ContentConsumer;->inStartTag:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 194
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/sax/ContentConsumer;->strBuffer:Ljava/lang/StringBuilder;

    move-object v6, v1

    move v7, v2

    move v8, v3

    invoke-virtual {v5, v6, v7, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 207
    :goto_0
    return-void

    .line 197
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/kawa/sax/ContentConsumer;->flushStrBuffer()V

    .line 200
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lgnu/kawa/sax/ContentConsumer;->out:Lorg/xml/sax/ContentHandler;

    move-object v6, v1

    move v7, v2

    move v8, v3

    invoke-interface {v5, v6, v7, v8}, Lorg/xml/sax/ContentHandler;->characters([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    goto :goto_0

    .line 202
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 204
    .local v4, "ex":Lorg/xml/sax/SAXException;
    move-object v5, v0

    const-string/jumbo v6, "characters"

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Lgnu/kawa/sax/ContentConsumer;->error(Ljava/lang/String;Lorg/xml/sax/SAXException;)V

    goto :goto_0
.end method

.method public writeBoolean(Z)V
    .locals 4

    .prologue
    .line 287
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/sax/ContentConsumer;
    move v1, p1

    .local v1, "v":Z
    move-object v2, v0

    iget v2, v2, Lgnu/kawa/sax/ContentConsumer;->inStartTag:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 288
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/sax/ContentConsumer;->endStartTag()V

    .line 290
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/sax/ContentConsumer;->strBuffer:Ljava/lang/StringBuilder;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 291
    return-void
.end method

.method public writeDouble(D)V
    .locals 7

    .prologue
    .line 319
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/sax/ContentConsumer;
    move-wide v1, p1

    .local v1, "v":D
    move-object v3, v0

    iget v3, v3, Lgnu/kawa/sax/ContentConsumer;->inStartTag:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 320
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/kawa/sax/ContentConsumer;->endStartTag()V

    .line 322
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/sax/ContentConsumer;->strBuffer:Ljava/lang/StringBuilder;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 323
    return-void
.end method

.method public writeFloat(F)V
    .locals 4

    .prologue
    .line 311
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/sax/ContentConsumer;
    move v1, p1

    .local v1, "v":F
    move-object v2, v0

    iget v2, v2, Lgnu/kawa/sax/ContentConsumer;->inStartTag:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 312
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/sax/ContentConsumer;->endStartTag()V

    .line 314
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/sax/ContentConsumer;->strBuffer:Ljava/lang/StringBuilder;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 315
    return-void
.end method

.method public writeInt(I)V
    .locals 4

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/sax/ContentConsumer;
    move v1, p1

    .local v1, "v":I
    move-object v2, v0

    iget v2, v2, Lgnu/kawa/sax/ContentConsumer;->inStartTag:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 304
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/sax/ContentConsumer;->endStartTag()V

    .line 306
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/sax/ContentConsumer;->strBuffer:Ljava/lang/StringBuilder;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 307
    return-void
.end method

.method public writeLong(J)V
    .locals 7

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/sax/ContentConsumer;
    move-wide v1, p1

    .local v1, "v":J
    move-object v3, v0

    iget v3, v3, Lgnu/kawa/sax/ContentConsumer;->inStartTag:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 296
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/kawa/sax/ContentConsumer;->endStartTag()V

    .line 298
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/sax/ContentConsumer;->strBuffer:Ljava/lang/StringBuilder;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 299
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/sax/ContentConsumer;
    move-object v1, p1

    .local v1, "v":Ljava/lang/Object;
    move-object v3, v1

    instance-of v3, v3, Lgnu/lists/Consumable;

    if-eqz v3, :cond_0

    .line 273
    move-object v3, v1

    check-cast v3, Lgnu/lists/Consumable;

    move-object v4, v0

    invoke-interface {v3, v4}, Lgnu/lists/Consumable;->consume(Lgnu/lists/Consumer;)V

    .line 283
    :goto_0
    return-void

    .line 274
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Lgnu/lists/SeqPosition;

    if-eqz v3, :cond_1

    .line 276
    move-object v3, v1

    check-cast v3, Lgnu/lists/SeqPosition;

    move-object v2, v3

    .line 277
    .local v2, "pos":Lgnu/lists/SeqPosition;
    move-object v3, v2

    iget-object v3, v3, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v4, v2

    iget v4, v4, Lgnu/lists/SeqPosition;->ipos:I

    move-object v5, v0

    invoke-virtual {v3, v4, v5}, Lgnu/lists/AbstractSequence;->consumeNext(ILgnu/lists/Consumer;)Z

    move-result v3

    .line 278
    goto :goto_0

    .line 279
    .end local v2    # "pos":Lgnu/lists/SeqPosition;
    :cond_1
    move-object v3, v1

    instance-of v3, v3, Lgnu/text/Char;

    if-eqz v3, :cond_2

    .line 280
    move-object v3, v1

    check-cast v3, Lgnu/text/Char;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lgnu/text/Char;->print(Lgnu/lists/Consumer;)V

    goto :goto_0

    .line 282
    :cond_2
    move-object v3, v0

    move-object v4, v1

    if-nez v4, :cond_3

    const-string/jumbo v4, "(null)"

    :goto_1
    invoke-virtual {v3, v4}, Lgnu/kawa/sax/ContentConsumer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method
