.class public abstract Lgnu/lists/AbstractFormat;
.super Ljava/text/Format;
.source "AbstractFormat.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractFormat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/text/Format;-><init>()V

    return-void
.end method


# virtual methods
.method public endAttribute(Lgnu/lists/Consumer;)V
    .locals 5

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractFormat;
    move-object v1, p1

    .local v1, "out":Lgnu/lists/Consumer;
    move-object v2, v0

    const-string/jumbo v3, " "

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/lists/AbstractFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 59
    return-void
.end method

.method public endElement(Lgnu/lists/Consumer;)V
    .locals 5

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractFormat;
    move-object v1, p1

    .local v1, "out":Lgnu/lists/Consumer;
    move-object v2, v0

    const-string/jumbo v3, ")"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/lists/AbstractFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 48
    return-void
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 9

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractFormat;
    move-object v1, p1

    .local v1, "val":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "sbuf":Ljava/lang/StringBuffer;
    move-object v3, p3

    .local v3, "fpos":Ljava/text/FieldPosition;
    new-instance v5, Lgnu/mapping/CharArrayOutPort;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Lgnu/mapping/CharArrayOutPort;-><init>()V

    move-object v4, v5

    .line 103
    .local v4, "out":Lgnu/mapping/CharArrayOutPort;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Lgnu/lists/AbstractFormat;->writeObject(Ljava/lang/Object;Lgnu/lists/PrintConsumer;)V

    .line 104
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v6}, Lgnu/mapping/CharArrayOutPort;->toCharArray()[C

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 105
    move-object v5, v4

    invoke-virtual {v5}, Lgnu/mapping/CharArrayOutPort;->close()V

    .line 106
    move-object v5, v2

    move-object v0, v5

    .end local v0    # "this":Lgnu/lists/AbstractFormat;
    return-object v0
.end method

.method public format(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 8

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractFormat;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "out":Lgnu/lists/Consumer;
    move-object v6, v2

    instance-of v6, v6, Lgnu/mapping/OutPort;

    if-eqz v6, :cond_0

    .line 67
    move-object v6, v2

    check-cast v6, Lgnu/mapping/OutPort;

    move-object v3, v6

    .line 68
    .local v3, "pout":Lgnu/mapping/OutPort;
    move-object v6, v3

    iget-object v6, v6, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    move-object v4, v6

    .line 71
    .local v4, "saveFormat":Lgnu/lists/AbstractFormat;
    move-object v6, v3

    move-object v7, v0

    :try_start_0
    iput-object v7, v6, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    .line 72
    move-object v6, v2

    move-object v7, v1

    invoke-interface {v6, v7}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    move-object v6, v3

    move-object v7, v4

    iput-object v7, v6, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    .line 77
    .line 78
    .line 81
    .end local v3    # "pout":Lgnu/mapping/OutPort;
    .end local v4    # "saveFormat":Lgnu/lists/AbstractFormat;
    :goto_0
    return-void

    .line 76
    .restart local v3    # "pout":Lgnu/mapping/OutPort;
    .restart local v4    # "saveFormat":Lgnu/lists/AbstractFormat;
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v3

    move-object v7, v4

    iput-object v7, v6, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    move-object v6, v5

    throw v6

    .line 80
    .end local v3    # "pout":Lgnu/mapping/OutPort;
    .end local v4    # "saveFormat":Lgnu/lists/AbstractFormat;
    :cond_0
    move-object v6, v2

    move-object v7, v1

    invoke-interface {v6, v7}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractFormat;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, p2

    .local v2, "status":Ljava/text/ParsePosition;
    new-instance v3, Ljava/lang/Error;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".parseObject - not implemented"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public startAttribute(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 6

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractFormat;
    move-object v1, p1

    .local v1, "attrType":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "out":Lgnu/lists/Consumer;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/lists/AbstractFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 53
    move-object v3, v0

    const-string/jumbo v4, ": "

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/lists/AbstractFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 54
    return-void
.end method

.method public startElement(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 6

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractFormat;
    move-object v1, p1

    .local v1, "type":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "out":Lgnu/lists/Consumer;
    move-object v3, v0

    const-string/jumbo v4, "("

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/lists/AbstractFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 41
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/lists/AbstractFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 42
    move-object v3, v0

    const-string/jumbo v4, " "

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/lists/AbstractFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 43
    return-void
.end method

.method public write(ILgnu/lists/Consumer;)V
    .locals 5

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractFormat;
    move v1, p1

    .local v1, "v":I
    move-object v2, p2

    .local v2, "out":Lgnu/lists/Consumer;
    move-object v3, v2

    move v4, v1

    invoke-interface {v3, v4}, Lgnu/lists/Consumer;->write(I)V

    .line 16
    return-void
.end method

.method protected write(Ljava/lang/String;Lgnu/lists/Consumer;)V
    .locals 5

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractFormat;
    move-object v1, p1

    .local v1, "str":Ljava/lang/String;
    move-object v2, p2

    .local v2, "out":Lgnu/lists/Consumer;
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public writeBoolean(ZLgnu/lists/Consumer;)V
    .locals 5

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractFormat;
    move v1, p1

    .local v1, "v":Z
    move-object v2, p2

    .local v2, "out":Lgnu/lists/Consumer;
    move-object v3, v2

    move v4, v1

    invoke-interface {v3, v4}, Lgnu/lists/Consumer;->writeBoolean(Z)V

    .line 36
    return-void
.end method

.method public writeInt(ILgnu/lists/Consumer;)V
    .locals 7

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractFormat;
    move v1, p1

    .local v1, "i":I
    move-object v2, p2

    .local v2, "out":Lgnu/lists/Consumer;
    move-object v3, v0

    move v4, v1

    int-to-long v4, v4

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lgnu/lists/AbstractFormat;->writeLong(JLgnu/lists/Consumer;)V

    .line 31
    return-void
.end method

.method public writeLong(JLgnu/lists/Consumer;)V
    .locals 9

    .prologue
    .line 22
    move-object v1, p0

    .local v1, "this":Lgnu/lists/AbstractFormat;
    move-wide v2, p1

    .local v2, "v":J
    move-object v4, p3

    .local v4, "out":Lgnu/lists/Consumer;
    move-object v5, v4

    move-wide v6, v2

    invoke-interface {v5, v6, v7}, Lgnu/lists/Consumer;->writeLong(J)V

    .line 23
    return-void
.end method

.method public abstract writeObject(Ljava/lang/Object;Lgnu/lists/Consumer;)V
.end method

.method public final writeObject(Ljava/lang/Object;Lgnu/lists/PrintConsumer;)V
    .locals 6

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractFormat;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "out":Lgnu/lists/PrintConsumer;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/lists/AbstractFormat;->writeObject(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 86
    return-void
.end method

.method public final writeObject(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 10

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lgnu/lists/AbstractFormat;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "out":Ljava/io/Writer;
    move-object v4, v2

    instance-of v4, v4, Lgnu/lists/Consumer;

    if-eqz v4, :cond_0

    .line 91
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    check-cast v6, Lgnu/lists/Consumer;

    invoke-virtual {v4, v5, v6}, Lgnu/lists/AbstractFormat;->writeObject(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 98
    :goto_0
    return-void

    .line 94
    :cond_0
    new-instance v4, Lgnu/mapping/OutPort;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct {v5, v6, v7, v8}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;ZZ)V

    move-object v3, v4

    .line 95
    .local v3, "port":Lgnu/mapping/OutPort;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    check-cast v6, Lgnu/lists/Consumer;

    invoke-virtual {v4, v5, v6}, Lgnu/lists/AbstractFormat;->writeObject(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 96
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/mapping/OutPort;->close()V

    goto :goto_0
.end method
