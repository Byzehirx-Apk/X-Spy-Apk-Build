.class public Lgnu/text/LiteralFormat;
.super Lgnu/text/ReportFormat;
.source "LiteralFormat.java"


# instance fields
.field text:[C


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/text/LiteralFormat;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/text/ReportFormat;-><init>()V

    .line 16
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    iput-object v3, v2, Lgnu/text/LiteralFormat;->text:[C

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuffer;)V
    .locals 8

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/text/LiteralFormat;
    move-object v1, p1

    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object v3, v0

    invoke-direct {v3}, Lgnu/text/ReportFormat;-><init>()V

    .line 21
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    move v2, v3

    .line 22
    .local v2, "len":I
    move-object v3, v0

    move v4, v2

    new-array v4, v4, [C

    iput-object v4, v3, Lgnu/text/LiteralFormat;->text:[C

    .line 23
    move-object v3, v1

    const/4 v4, 0x0

    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Lgnu/text/LiteralFormat;->text:[C

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 24
    return-void
.end method

.method public constructor <init>([C)V
    .locals 4

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lgnu/text/LiteralFormat;
    move-object v1, p1

    .local v1, "text":[C
    move-object v2, v0

    invoke-direct {v2}, Lgnu/text/ReportFormat;-><init>()V

    .line 11
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/text/LiteralFormat;->text:[C

    .line 12
    return-void
.end method


# virtual methods
.method public content()Ljava/lang/String;
    .locals 5

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lgnu/text/LiteralFormat;
    new-instance v1, Ljava/lang/String;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Lgnu/text/LiteralFormat;->text:[C

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/LiteralFormat;
    return-object v0
.end method

.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lgnu/text/LiteralFormat;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move v2, p2

    .local v2, "start":I
    move-object v3, p3

    .local v3, "dst":Ljava/io/Writer;
    move-object v4, p4

    .local v4, "fpos":Ljava/text/FieldPosition;
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lgnu/text/LiteralFormat;->text:[C

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write([C)V

    .line 30
    move v5, v2

    move v0, v5

    .end local v0    # "this":Lgnu/text/LiteralFormat;
    return v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lgnu/text/LiteralFormat;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, p2

    .local v2, "status":Ljava/text/ParsePosition;
    new-instance v3, Ljava/lang/Error;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "LiteralFormat.parseObject - not implemented"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lgnu/text/LiteralFormat;
    new-instance v2, Ljava/lang/StringBuffer;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "LiteralFormat[\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 47
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/text/LiteralFormat;->text:[C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 48
    move-object v2, v1

    const-string/jumbo v3, "\"]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 49
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/text/LiteralFormat;
    return-object v0
.end method
