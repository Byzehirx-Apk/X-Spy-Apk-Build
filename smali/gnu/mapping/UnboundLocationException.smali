.class public Lgnu/mapping/UnboundLocationException;
.super Ljava/lang/RuntimeException;
.source "UnboundLocationException.java"


# instance fields
.field column:I

.field filename:Ljava/lang/String;

.field line:I

.field location:Lgnu/mapping/Location;

.field public symbol:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/UnboundLocationException;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Location;)V
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/UnboundLocationException;
    move-object v1, p1

    .local v1, "loc":Lgnu/mapping/Location;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    .line 44
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/mapping/UnboundLocationException;->location:Lgnu/mapping/Location;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/UnboundLocationException;
    move-object v1, p1

    .local v1, "symbol":Ljava/lang/Object;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    .line 19
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/mapping/UnboundLocationException;->symbol:Ljava/lang/Object;

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/text/SourceLocator;)V
    .locals 5

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/UnboundLocationException;
    move-object v1, p1

    .local v1, "symbol":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "location":Lgnu/text/SourceLocator;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    .line 33
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/mapping/UnboundLocationException;->symbol:Ljava/lang/Object;

    .line 34
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 36
    move-object v3, v0

    move-object v4, v2

    invoke-interface {v4}, Lgnu/text/SourceLocator;->getFileName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lgnu/mapping/UnboundLocationException;->filename:Ljava/lang/String;

    .line 37
    move-object v3, v0

    move-object v4, v2

    invoke-interface {v4}, Lgnu/text/SourceLocator;->getLineNumber()I

    move-result v4

    iput v4, v3, Lgnu/mapping/UnboundLocationException;->line:I

    .line 38
    move-object v3, v0

    move-object v4, v2

    invoke-interface {v4}, Lgnu/text/SourceLocator;->getColumnNumber()I

    move-result v4

    iput v4, v3, Lgnu/mapping/UnboundLocationException;->column:I

    .line 40
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/UnboundLocationException;
    move-object v1, p1

    .local v1, "symbol":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "message":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 50
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/mapping/UnboundLocationException;->symbol:Ljava/lang/Object;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;II)V
    .locals 7

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/UnboundLocationException;
    move-object v1, p1

    .local v1, "symbol":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "filename":Ljava/lang/String;
    move v3, p3

    .local v3, "line":I
    move v4, p4

    .local v4, "column":I
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    .line 25
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lgnu/mapping/UnboundLocationException;->symbol:Ljava/lang/Object;

    .line 26
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lgnu/mapping/UnboundLocationException;->filename:Ljava/lang/String;

    .line 27
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lgnu/mapping/UnboundLocationException;->line:I

    .line 28
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lgnu/mapping/UnboundLocationException;->column:I

    .line 29
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 8

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/UnboundLocationException;
    move-object v5, v0

    invoke-super {v5}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 63
    .local v1, "msg":Ljava/lang/String;
    move-object v5, v1

    if-eqz v5, :cond_0

    .line 64
    move-object v5, v1

    move-object v0, v5

    .line 102
    .end local v0    # "this":Lgnu/mapping/UnboundLocationException;
    :goto_0
    return-object v0

    .line 65
    .restart local v0    # "this":Lgnu/mapping/UnboundLocationException;
    :cond_0
    new-instance v5, Ljava/lang/StringBuffer;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    move-object v2, v5

    .line 66
    .local v2, "sbuf":Ljava/lang/StringBuffer;
    move-object v5, v0

    iget-object v5, v5, Lgnu/mapping/UnboundLocationException;->filename:Ljava/lang/String;

    if-nez v5, :cond_1

    move-object v5, v0

    iget v5, v5, Lgnu/mapping/UnboundLocationException;->line:I

    if-lez v5, :cond_4

    .line 68
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lgnu/mapping/UnboundLocationException;->filename:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 69
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lgnu/mapping/UnboundLocationException;->filename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 70
    :cond_2
    move-object v5, v0

    iget v5, v5, Lgnu/mapping/UnboundLocationException;->line:I

    if-ltz v5, :cond_3

    .line 72
    move-object v5, v2

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 73
    move-object v5, v2

    move-object v6, v0

    iget v6, v6, Lgnu/mapping/UnboundLocationException;->line:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 74
    move-object v5, v0

    iget v5, v5, Lgnu/mapping/UnboundLocationException;->column:I

    if-lez v5, :cond_3

    .line 76
    move-object v5, v2

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 77
    move-object v5, v2

    move-object v6, v0

    iget v6, v6, Lgnu/mapping/UnboundLocationException;->column:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 80
    :cond_3
    move-object v5, v2

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 82
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Lgnu/mapping/UnboundLocationException;->location:Lgnu/mapping/Location;

    if-nez v5, :cond_6

    const/4 v5, 0x0

    :goto_1
    move-object v3, v5

    .line 83
    .local v3, "name":Lgnu/mapping/Symbol;
    move-object v5, v3

    if-eqz v5, :cond_7

    .line 85
    move-object v5, v2

    const-string/jumbo v6, "unbound location "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 86
    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 87
    move-object v5, v0

    iget-object v5, v5, Lgnu/mapping/UnboundLocationException;->location:Lgnu/mapping/Location;

    invoke-virtual {v5}, Lgnu/mapping/Location;->getKeyProperty()Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 88
    .local v4, "property":Ljava/lang/Object;
    move-object v5, v4

    if-eqz v5, :cond_5

    .line 90
    move-object v5, v2

    const-string/jumbo v6, " (property "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 91
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 92
    move-object v5, v2

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 94
    .line 102
    .end local v4    # "property":Ljava/lang/Object;
    :cond_5
    :goto_2
    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    goto/16 :goto_0

    .line 82
    .end local v3    # "name":Lgnu/mapping/Symbol;
    :cond_6
    move-object v5, v0

    iget-object v5, v5, Lgnu/mapping/UnboundLocationException;->location:Lgnu/mapping/Location;

    invoke-virtual {v5}, Lgnu/mapping/Location;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v5

    goto :goto_1

    .line 95
    .restart local v3    # "name":Lgnu/mapping/Symbol;
    :cond_7
    move-object v5, v0

    iget-object v5, v5, Lgnu/mapping/UnboundLocationException;->symbol:Ljava/lang/Object;

    if-eqz v5, :cond_8

    .line 97
    move-object v5, v2

    const-string/jumbo v6, "unbound location "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 98
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lgnu/mapping/UnboundLocationException;->symbol:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    goto :goto_2

    .line 101
    :cond_8
    move-object v5, v2

    const-string/jumbo v6, "unbound location"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    goto :goto_2
.end method

.method public setLine(Ljava/lang/String;II)V
    .locals 6

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/UnboundLocationException;
    move-object v1, p1

    .local v1, "filename":Ljava/lang/String;
    move v2, p2

    .local v2, "line":I
    move v3, p3

    .local v3, "column":I
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/UnboundLocationException;->filename:Ljava/lang/String;

    .line 56
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lgnu/mapping/UnboundLocationException;->line:I

    .line 57
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lgnu/mapping/UnboundLocationException;->column:I

    .line 58
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/UnboundLocationException;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/mapping/UnboundLocationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/UnboundLocationException;
    return-object v0
.end method
