.class public Lgnu/kawa/xml/HttpPrinter;
.super Lgnu/lists/FilterConsumer;
.source "HttpPrinter.java"


# instance fields
.field currentHeader:Ljava/lang/Object;

.field private elementNesting:I

.field headers:Ljava/util/Vector;

.field protected ostream:Ljava/io/OutputStream;

.field protected sawContentType:Ljava/lang/String;

.field sbuf:Ljava/lang/StringBuilder;

.field private seenStartDocument:I

.field seenXmlHeader:Z

.field writer:Lgnu/mapping/OutPort;


# direct methods
.method public constructor <init>(Lgnu/mapping/OutPort;)V
    .locals 7

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/HttpPrinter;
    move-object v1, p1

    .local v1, "out":Lgnu/mapping/OutPort;
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lgnu/lists/FilterConsumer;-><init>(Lgnu/lists/Consumer;)V

    .line 17
    move-object v2, v0

    new-instance v3, Ljava/util/Vector;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iput-object v3, v2, Lgnu/kawa/xml/HttpPrinter;->headers:Ljava/util/Vector;

    .line 19
    move-object v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/16 v5, 0x64

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v3, v2, Lgnu/kawa/xml/HttpPrinter;->sbuf:Ljava/lang/StringBuilder;

    .line 42
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/kawa/xml/HttpPrinter;->writer:Lgnu/mapping/OutPort;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 7

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/HttpPrinter;
    move-object v1, p1

    .local v1, "out":Ljava/io/OutputStream;
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lgnu/lists/FilterConsumer;-><init>(Lgnu/lists/Consumer;)V

    .line 17
    move-object v2, v0

    new-instance v3, Ljava/util/Vector;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iput-object v3, v2, Lgnu/kawa/xml/HttpPrinter;->headers:Ljava/util/Vector;

    .line 19
    move-object v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/16 v5, 0x64

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v3, v2, Lgnu/kawa/xml/HttpPrinter;->sbuf:Ljava/lang/StringBuilder;

    .line 36
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/kawa/xml/HttpPrinter;->ostream:Ljava/io/OutputStream;

    .line 37
    return-void
.end method

.method public static make(Lgnu/mapping/OutPort;)Lgnu/kawa/xml/HttpPrinter;
    .locals 5

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "out":Lgnu/mapping/OutPort;
    new-instance v1, Lgnu/kawa/xml/HttpPrinter;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lgnu/kawa/xml/HttpPrinter;-><init>(Lgnu/mapping/OutPort;)V

    move-object v0, v1

    .end local v0    # "out":Lgnu/mapping/OutPort;
    return-object v0
.end method

.method private writeRaw(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/HttpPrinter;
    move-object v1, p1

    .local v1, "str":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xml/HttpPrinter;->writer:Lgnu/mapping/OutPort;

    if-eqz v4, :cond_1

    .line 54
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xml/HttpPrinter;->writer:Lgnu/mapping/OutPort;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/mapping/OutPort;->write(Ljava/lang/String;)V

    .line 61
    :cond_0
    return-void

    .line 57
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move v2, v4

    .line 58
    .local v2, "len":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 59
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xml/HttpPrinter;->ostream:Ljava/io/OutputStream;

    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    .line 58
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/HttpPrinter;
    move-object v1, p1

    .local v1, "label":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/String;
    move-object v3, v1

    const-string/jumbo v4, "Content-type"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/kawa/xml/HttpPrinter;->sawContentType:Ljava/lang/String;

    .line 93
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/HttpPrinter;->headers:Ljava/util/Vector;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 94
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/HttpPrinter;->headers:Ljava/util/Vector;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method protected beforeNode()V
    .locals 4

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/HttpPrinter;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/xml/HttpPrinter;->sawContentType:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 66
    move-object v1, v0

    const-string/jumbo v2, "Content-type"

    const-string/jumbo v3, "text/xml"

    invoke-virtual {v1, v2, v3}, Lgnu/kawa/xml/HttpPrinter;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/kawa/xml/HttpPrinter;->beginData()V

    .line 68
    return-void
.end method

.method public beginData()V
    .locals 8

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/HttpPrinter;
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    if-nez v3, :cond_4

    .line 123
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/HttpPrinter;->sawContentType:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 124
    move-object v3, v0

    const-string/jumbo v4, "Content-type"

    const-string/jumbo v5, "text/plain"

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/xml/HttpPrinter;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/HttpPrinter;->writer:Lgnu/mapping/OutPort;

    if-nez v3, :cond_1

    .line 126
    move-object v3, v0

    new-instance v4, Lgnu/mapping/OutPort;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/xml/HttpPrinter;->ostream:Ljava/io/OutputStream;

    invoke-direct {v5, v6}, Lgnu/mapping/OutPort;-><init>(Ljava/io/OutputStream;)V

    iput-object v4, v3, Lgnu/kawa/xml/HttpPrinter;->writer:Lgnu/mapping/OutPort;

    .line 127
    :cond_1
    const/4 v3, 0x0

    move-object v1, v3

    .line 128
    .local v1, "style":Ljava/lang/String;
    const-string/jumbo v3, "text/html"

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xml/HttpPrinter;->sawContentType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 129
    const-string/jumbo v3, "html"

    move-object v1, v3

    .line 134
    :cond_2
    :goto_0
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xml/HttpPrinter;->writer:Lgnu/mapping/OutPort;

    move-object v5, v1

    invoke-static {v4, v5}, Lgnu/xml/XMLPrinter;->make(Lgnu/mapping/OutPort;Ljava/lang/Object;)Lgnu/xml/XMLPrinter;

    move-result-object v4

    iput-object v4, v3, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    .line 135
    move-object v3, v0

    iget v3, v3, Lgnu/kawa/xml/HttpPrinter;->seenStartDocument:I

    if-nez v3, :cond_3

    .line 137
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    invoke-interface {v3}, Lgnu/lists/Consumer;->startDocument()V

    .line 138
    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Lgnu/kawa/xml/HttpPrinter;->seenStartDocument:I

    .line 142
    :cond_3
    move-object v3, v0

    :try_start_0
    invoke-virtual {v3}, Lgnu/kawa/xml/HttpPrinter;->printHeaders()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .line 150
    .end local v1    # "style":Ljava/lang/String;
    :cond_4
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xml/HttpPrinter;->sbuf:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Lgnu/kawa/xml/HttpPrinter;->append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;

    move-result-object v3

    .line 154
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/HttpPrinter;->sbuf:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 155
    return-void

    .line 130
    .restart local v1    # "style":Ljava/lang/String;
    :cond_5
    const-string/jumbo v3, "application/xhtml+xml"

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xml/HttpPrinter;->sawContentType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 131
    const-string/jumbo v3, "xhtml"

    move-object v1, v3

    goto :goto_0

    .line 132
    :cond_6
    const-string/jumbo v3, "text/plain"

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xml/HttpPrinter;->sawContentType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 133
    const-string/jumbo v3, "plain"

    move-object v1, v3

    goto :goto_0

    .line 144
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 146
    .local v2, "ex":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public endAttribute()V
    .locals 4

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/HttpPrinter;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/xml/HttpPrinter;->currentHeader:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 109
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/HttpPrinter;->currentHeader:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/HttpPrinter;->sbuf:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lgnu/kawa/xml/HttpPrinter;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/xml/HttpPrinter;->sbuf:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 111
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lgnu/kawa/xml/HttpPrinter;->currentHeader:Ljava/lang/Object;

    .line 115
    :goto_0
    return-void

    .line 114
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    invoke-interface {v1}, Lgnu/lists/Consumer;->endAttribute()V

    goto :goto_0
.end method

.method public endDocument()V
    .locals 5

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/HttpPrinter;
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    if-eqz v2, :cond_0

    .line 225
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    invoke-interface {v2}, Lgnu/lists/Consumer;->endDocument()V

    .line 228
    :cond_0
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lgnu/kawa/xml/HttpPrinter;->sawContentType:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 229
    move-object v2, v0

    const-string/jumbo v3, "Content-type"

    const-string/jumbo v4, "text/plain"

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/xml/HttpPrinter;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/HttpPrinter;->sbuf:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 232
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/HttpPrinter;->sbuf:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 233
    .local v1, "str":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/HttpPrinter;->sbuf:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 234
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/HttpPrinter;->writer:Lgnu/mapping/OutPort;

    if-eqz v2, :cond_5

    .line 235
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/HttpPrinter;->writer:Lgnu/mapping/OutPort;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/mapping/OutPort;->write(Ljava/lang/String;)V

    .line 240
    .end local v1    # "str":Ljava/lang/String;
    :cond_2
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/HttpPrinter;->writer:Lgnu/mapping/OutPort;

    if-eqz v2, :cond_3

    .line 241
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/HttpPrinter;->writer:Lgnu/mapping/OutPort;

    invoke-virtual {v2}, Lgnu/mapping/OutPort;->close()V

    .line 242
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/HttpPrinter;->ostream:Ljava/io/OutputStream;

    if-eqz v2, :cond_4

    .line 243
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/HttpPrinter;->ostream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 247
    .line 248
    :cond_4
    :goto_1
    return-void

    .line 237
    .restart local v1    # "str":Ljava/lang/String;
    :cond_5
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/HttpPrinter;->ostream:Ljava/io/OutputStream;

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    .end local v1    # "str":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_1
.end method

.method public endElement()V
    .locals 5

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/HttpPrinter;
    move-object v1, v0

    invoke-super {v1}, Lgnu/lists/FilterConsumer;->endElement()V

    .line 179
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lgnu/kawa/xml/HttpPrinter;->elementNesting:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lgnu/kawa/xml/HttpPrinter;->elementNesting:I

    .line 180
    move-object v1, v0

    iget v1, v1, Lgnu/kawa/xml/HttpPrinter;->elementNesting:I

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lgnu/kawa/xml/HttpPrinter;->seenStartDocument:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 181
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/kawa/xml/HttpPrinter;->endDocument()V

    .line 182
    :cond_0
    return-void
.end method

.method public printHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/HttpPrinter;
    move-object v1, p1

    .local v1, "label":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lgnu/kawa/xml/HttpPrinter;->writeRaw(Ljava/lang/String;)V

    .line 74
    move-object v3, v0

    const-string/jumbo v4, ": "

    invoke-direct {v3, v4}, Lgnu/kawa/xml/HttpPrinter;->writeRaw(Ljava/lang/String;)V

    .line 75
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lgnu/kawa/xml/HttpPrinter;->writeRaw(Ljava/lang/String;)V

    .line 76
    move-object v3, v0

    const-string/jumbo v4, "\n"

    invoke-direct {v3, v4}, Lgnu/kawa/xml/HttpPrinter;->writeRaw(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public printHeaders()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/HttpPrinter;
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/HttpPrinter;->headers:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    move v1, v3

    .line 83
    .local v1, "num":I
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move v4, v1

    if-ge v3, v4, :cond_0

    .line 84
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xml/HttpPrinter;->headers:Ljava/util/Vector;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/xml/HttpPrinter;->headers:Ljava/util/Vector;

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/xml/HttpPrinter;->printHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 86
    :cond_0
    move-object v3, v0

    const-string/jumbo v4, "\n"

    invoke-direct {v3, v4}, Lgnu/kawa/xml/HttpPrinter;->writeRaw(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public reset(Z)Z
    .locals 5

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/HttpPrinter;
    move v1, p1

    .local v1, "headersAlso":Z
    move v3, v1

    if-eqz v3, :cond_0

    .line 258
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/HttpPrinter;->headers:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 259
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lgnu/kawa/xml/HttpPrinter;->sawContentType:Ljava/lang/String;

    .line 260
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lgnu/kawa/xml/HttpPrinter;->currentHeader:Ljava/lang/Object;

    .line 261
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lgnu/kawa/xml/HttpPrinter;->elementNesting:I

    .line 263
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/HttpPrinter;->sbuf:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 264
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    .line 265
    const/4 v3, 0x1

    move v2, v3

    .line 266
    .local v2, "ok":Z
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/HttpPrinter;->ostream:Ljava/io/OutputStream;

    if-eqz v3, :cond_1

    .line 268
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/HttpPrinter;->writer:Lgnu/mapping/OutPort;

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    move v2, v3

    .line 269
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lgnu/kawa/xml/HttpPrinter;->writer:Lgnu/mapping/OutPort;

    .line 271
    :cond_1
    move v3, v2

    move v0, v3

    .end local v0    # "this":Lgnu/kawa/xml/HttpPrinter;
    return v0

    .line 268
    .restart local v0    # "this":Lgnu/kawa/xml/HttpPrinter;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public startAttribute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/HttpPrinter;
    move-object v1, p1

    .local v1, "attrType":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    if-nez v2, :cond_0

    .line 100
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/kawa/xml/HttpPrinter;->currentHeader:Ljava/lang/Object;

    .line 103
    :goto_0
    return-void

    .line 102
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    move-object v3, v1

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->startAttribute(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public startDocument()V
    .locals 3

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/HttpPrinter;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    if-eqz v1, :cond_0

    .line 218
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    invoke-interface {v1}, Lgnu/lists/Consumer;->startDocument()V

    .line 219
    :cond_0
    move-object v1, v0

    const/4 v2, 0x2

    iput v2, v1, Lgnu/kawa/xml/HttpPrinter;->seenStartDocument:I

    .line 220
    return-void
.end method

.method public startElement(Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/HttpPrinter;
    move-object v1, p1

    .local v1, "type":Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/HttpPrinter;->sawContentType:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 162
    move-object v3, v0

    iget-boolean v3, v3, Lgnu/kawa/xml/HttpPrinter;->seenXmlHeader:Z

    if-nez v3, :cond_1

    .line 163
    const-string/jumbo v3, "text/html"

    move-object v2, v3

    .line 169
    .local v2, "mimeType":Ljava/lang/String;
    :goto_0
    move-object v3, v0

    const-string/jumbo v4, "Content-type"

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/xml/HttpPrinter;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .end local v2    # "mimeType":Ljava/lang/String;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/kawa/xml/HttpPrinter;->beginData()V

    .line 172
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    move-object v4, v1

    invoke-interface {v3, v4}, Lgnu/lists/Consumer;->startElement(Ljava/lang/Object;)V

    .line 173
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lgnu/kawa/xml/HttpPrinter;->elementNesting:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lgnu/kawa/xml/HttpPrinter;->elementNesting:I

    .line 174
    return-void

    .line 164
    :cond_1
    move-object v3, v1

    instance-of v3, v3, Lgnu/mapping/Symbol;

    if-eqz v3, :cond_2

    const-string/jumbo v3, "html"

    move-object v4, v1

    check-cast v4, Lgnu/mapping/Symbol;

    invoke-virtual {v4}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 166
    const-string/jumbo v3, "text/xhtml"

    move-object v2, v3

    .restart local v2    # "mimeType":Ljava/lang/String;
    goto :goto_0

    .line 168
    .end local v2    # "mimeType":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "text/xml"

    move-object v2, v3

    .restart local v2    # "mimeType":Ljava/lang/String;
    goto :goto_0
.end method

.method public write(Ljava/lang/CharSequence;II)V
    .locals 9

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/HttpPrinter;
    move-object v1, p1

    .local v1, "str":Ljava/lang/CharSequence;
    move v2, p2

    .local v2, "start":I
    move v3, p3

    .local v3, "length":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    if-nez v4, :cond_0

    .line 202
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xml/HttpPrinter;->sbuf:Ljava/lang/StringBuilder;

    move-object v5, v1

    move v6, v2

    move v7, v2

    move v8, v3

    add-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 205
    :goto_0
    return-void

    .line 204
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-interface {v4, v5, v6, v7}, Lgnu/lists/Consumer;->write(Ljava/lang/CharSequence;II)V

    goto :goto_0
.end method

.method public write([CII)V
    .locals 8

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/HttpPrinter;
    move-object v1, p1

    .local v1, "buf":[C
    move v2, p2

    .local v2, "off":I
    move v3, p3

    .local v3, "len":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    if-nez v4, :cond_0

    .line 210
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xml/HttpPrinter;->sbuf:Ljava/lang/StringBuilder;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 213
    :goto_0
    return-void

    .line 212
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-interface {v4, v5, v6, v7}, Lgnu/lists/Consumer;->write([CII)V

    goto :goto_0
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/HttpPrinter;
    move-object v1, p1

    .local v1, "v":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lgnu/lists/Consumable;

    if-eqz v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Lgnu/lists/UnescapedData;

    if-nez v2, :cond_0

    .line 187
    move-object v2, v1

    check-cast v2, Lgnu/lists/Consumable;

    move-object v3, v0

    invoke-interface {v2, v3}, Lgnu/lists/Consumable;->consume(Lgnu/lists/Consumer;)V

    .line 193
    :goto_0
    return-void

    .line 190
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/xml/HttpPrinter;->beginData()V

    .line 191
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lgnu/lists/FilterConsumer;->writeObject(Ljava/lang/Object;)V

    goto :goto_0
.end method
