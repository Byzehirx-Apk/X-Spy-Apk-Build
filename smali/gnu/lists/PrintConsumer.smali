.class public Lgnu/lists/PrintConsumer;
.super Ljava/io/PrintWriter;
.source "PrintConsumer.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Lgnu/lists/Consumer;


# direct methods
.method public constructor <init>(Lgnu/lists/Consumer;Z)V
    .locals 8

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/lists/PrintConsumer;
    move-object v1, p1

    .local v1, "out":Lgnu/lists/Consumer;
    move v2, p2

    .local v2, "autoFlush":Z
    move-object v3, v0

    move-object v4, v1

    instance-of v4, v4, Ljava/io/Writer;

    if-eqz v4, :cond_0

    move-object v4, v1

    check-cast v4, Ljava/io/Writer;

    :goto_0
    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 20
    return-void

    .line 18
    :cond_0
    new-instance v4, Lgnu/lists/ConsumerWriter;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lgnu/lists/ConsumerWriter;-><init>(Lgnu/lists/Consumer;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 6

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lgnu/lists/PrintConsumer;
    move-object v1, p1

    .local v1, "out":Ljava/io/OutputStream;
    move v2, p2

    .local v2, "autoFlush":Z
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 4

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lgnu/lists/PrintConsumer;
    move-object v1, p1

    .local v1, "out":Ljava/io/Writer;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Z)V
    .locals 6

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lgnu/lists/PrintConsumer;
    move-object v1, p1

    .local v1, "out":Ljava/io/Writer;
    move v2, p2

    .local v2, "autoFlush":Z
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 30
    return-void
.end method


# virtual methods
.method public bridge synthetic append(C)Lgnu/lists/Consumer;
    .locals 4

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/lists/PrintConsumer;
    move v1, p1

    .local v1, "x0":C
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/PrintConsumer;->append(C)Lgnu/lists/PrintConsumer;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/PrintConsumer;
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;
    .locals 4

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/lists/PrintConsumer;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/PrintConsumer;->append(Ljava/lang/CharSequence;)Lgnu/lists/PrintConsumer;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/PrintConsumer;
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;
    .locals 8

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/lists/PrintConsumer;
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

    invoke-virtual {v4, v5, v6, v7}, Lgnu/lists/PrintConsumer;->append(Ljava/lang/CharSequence;II)Lgnu/lists/PrintConsumer;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/lists/PrintConsumer;
    return-object v0
.end method

.method public append(C)Lgnu/lists/PrintConsumer;
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lgnu/lists/PrintConsumer;
    move v1, p1

    .local v1, "c":C
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/PrintConsumer;->print(C)V

    .line 49
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/PrintConsumer;
    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;)Lgnu/lists/PrintConsumer;
    .locals 6

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lgnu/lists/PrintConsumer;
    move-object v1, p1

    .local v1, "csq":Ljava/lang/CharSequence;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 55
    const-string/jumbo v2, "null"

    move-object v1, v2

    .line 56
    :cond_0
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lgnu/lists/PrintConsumer;->append(Ljava/lang/CharSequence;II)Lgnu/lists/PrintConsumer;

    move-result-object v2

    .line 57
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/PrintConsumer;
    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Lgnu/lists/PrintConsumer;
    .locals 8

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lgnu/lists/PrintConsumer;
    move-object v1, p1

    .local v1, "csq":Ljava/lang/CharSequence;
    move v2, p2

    .local v2, "start":I
    move v3, p3

    .local v3, "end":I
    move-object v5, v1

    if-nez v5, :cond_0

    .line 63
    const-string/jumbo v5, "null"

    move-object v1, v5

    .line 64
    :cond_0
    move v5, v2

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_1

    .line 65
    move-object v5, v0

    move-object v6, v1

    move v7, v4

    invoke-interface {v6, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lgnu/lists/PrintConsumer;->append(C)Lgnu/lists/PrintConsumer;

    move-result-object v5

    .line 64
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 66
    :cond_1
    move-object v5, v0

    move-object v0, v5

    .end local v0    # "this":Lgnu/lists/PrintConsumer;
    return-object v0
.end method

.method public bridge synthetic append(C)Ljava/io/PrintWriter;
    .locals 4

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/lists/PrintConsumer;
    move v1, p1

    .local v1, "x0":C
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/PrintConsumer;->append(C)Lgnu/lists/PrintConsumer;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/PrintConsumer;
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    .locals 4

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/lists/PrintConsumer;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/PrintConsumer;->append(Ljava/lang/CharSequence;)Lgnu/lists/PrintConsumer;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/PrintConsumer;
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;
    .locals 8

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/lists/PrintConsumer;
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

    invoke-virtual {v4, v5, v6, v7}, Lgnu/lists/PrintConsumer;->append(Ljava/lang/CharSequence;II)Lgnu/lists/PrintConsumer;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/lists/PrintConsumer;
    return-object v0
.end method

.method public bridge synthetic append(C)Ljava/io/Writer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/lists/PrintConsumer;
    move v1, p1

    .local v1, "x0":C
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/PrintConsumer;->append(C)Lgnu/lists/PrintConsumer;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/PrintConsumer;
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/lists/PrintConsumer;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/PrintConsumer;->append(Ljava/lang/CharSequence;)Lgnu/lists/PrintConsumer;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/PrintConsumer;
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/lists/PrintConsumer;
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

    invoke-virtual {v4, v5, v6, v7}, Lgnu/lists/PrintConsumer;->append(Ljava/lang/CharSequence;II)Lgnu/lists/PrintConsumer;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/lists/PrintConsumer;
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
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/lists/PrintConsumer;
    move v1, p1

    .local v1, "x0":C
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/PrintConsumer;->append(C)Lgnu/lists/PrintConsumer;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/PrintConsumer;
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
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/lists/PrintConsumer;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/PrintConsumer;->append(Ljava/lang/CharSequence;)Lgnu/lists/PrintConsumer;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/PrintConsumer;
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
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/lists/PrintConsumer;
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

    invoke-virtual {v4, v5, v6, v7}, Lgnu/lists/PrintConsumer;->append(Ljava/lang/CharSequence;II)Lgnu/lists/PrintConsumer;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/lists/PrintConsumer;
    return-object v0
.end method

.method public endAttribute()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public endDocument()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public endElement()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method protected endNumber()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public ignoring()Z
    .locals 2

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lgnu/lists/PrintConsumer;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/lists/PrintConsumer;
    return v0
.end method

.method public startAttribute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "attrType"    # Ljava/lang/Object;

    .prologue
    .line 125
    return-void
.end method

.method public startDocument()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public startElement(Ljava/lang/Object;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/Object;

    .prologue
    .line 121
    return-void
.end method

.method protected startNumber()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public write(Ljava/lang/CharSequence;II)V
    .locals 9

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lgnu/lists/PrintConsumer;
    move-object v1, p1

    .local v1, "csq":Ljava/lang/CharSequence;
    move v2, p2

    .local v2, "start":I
    move v3, p3

    .local v3, "end":I
    move-object v5, v1

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 74
    move-object v5, v0

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    move v7, v2

    move v8, v3

    invoke-virtual {v5, v6, v7, v8}, Lgnu/lists/PrintConsumer;->write(Ljava/lang/String;II)V

    .line 80
    :cond_0
    return-void

    .line 77
    :cond_1
    move v5, v2

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_0

    .line 78
    move-object v5, v0

    move-object v6, v1

    move v7, v4

    invoke-interface {v6, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lgnu/lists/PrintConsumer;->write(I)V

    .line 77
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public writeBoolean(Z)V
    .locals 4

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lgnu/lists/PrintConsumer;
    move v1, p1

    .local v1, "v":Z
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/PrintConsumer;->print(Z)V

    .line 86
    return-void
.end method

.method public writeDouble(D)V
    .locals 7

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lgnu/lists/PrintConsumer;
    move-wide v1, p1

    .local v1, "v":D
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/lists/PrintConsumer;->startNumber()V

    .line 98
    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lgnu/lists/PrintConsumer;->print(D)V

    .line 99
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/lists/PrintConsumer;->endNumber()V

    .line 100
    return-void
.end method

.method public writeFloat(F)V
    .locals 4

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lgnu/lists/PrintConsumer;
    move v1, p1

    .local v1, "v":F
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/lists/PrintConsumer;->startNumber()V

    .line 91
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/PrintConsumer;->print(F)V

    .line 92
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/lists/PrintConsumer;->endNumber()V

    .line 93
    return-void
.end method

.method public writeInt(I)V
    .locals 4

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lgnu/lists/PrintConsumer;
    move v1, p1

    .local v1, "v":I
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/lists/PrintConsumer;->startNumber()V

    .line 105
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/PrintConsumer;->print(I)V

    .line 106
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/lists/PrintConsumer;->endNumber()V

    .line 107
    return-void
.end method

.method public writeLong(J)V
    .locals 7

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lgnu/lists/PrintConsumer;
    move-wide v1, p1

    .local v1, "v":J
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/lists/PrintConsumer;->startNumber()V

    .line 112
    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lgnu/lists/PrintConsumer;->print(J)V

    .line 113
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/lists/PrintConsumer;->endNumber()V

    .line 114
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lgnu/lists/PrintConsumer;
    move-object v1, p1

    .local v1, "v":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/PrintConsumer;->print(Ljava/lang/Object;)V

    .line 132
    return-void
.end method
